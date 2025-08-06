import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/app/router/app_router.gr.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';
import 'package:flutter_otp/src/presentation/cubits/history/history_cubit.dart';
import 'package:flutter_otp/src/presentation/cubits/message/message_cubit.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MessageCubit _messageCubit;

  @override
  void initState() {
    super.initState();
    _messageCubit = context.read<MessageCubit>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messenger'),
        actions: [
          IconButton(
            onPressed: () {
              context.router.push(SettingsRoute());
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: BlocBuilder<MessageCubit, MessageState>(
        bloc: _messageCubit,
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            initial: () {
              return const Center(child: CircularProgressIndicator());
            },
            failed: () {
              return SizedBox.shrink();
            },
            orElse: () {
              final messages = _messageCubit.messages;
              if (messages.isEmpty) {
                return Center(child: Text('List is empty!'));
              } else {
                return listBuilder(messages);
              }
            },
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BlocConsumer<MessageCubit, MessageState>(
        bloc: _messageCubit,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            failed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('Something went wrong!')));
            },
            sent: (sentMessage) {
              context.read<HistoryCubit>().addMessage(sentMessage);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return SizedBox.shrink();
            },
            initial: () {
              return SizedBox.shrink();
            },
            orElse: () {
              return floatingButton(state);
            },
            failed: () {
              return floatingButton(state);
            },
          );
        },
      ),
    );
  }

  Widget floatingButton(MessageState state) {
    final stopped = state.maybeWhen(
      orElse: () => true,
      started: () => false,
      sent: (sentMessage) => false,
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: IconButton(
        icon: Icon(stopped ? Icons.play_arrow : Icons.pause),
        style: ButtonStyle(
          fixedSize: WidgetStatePropertyAll(Size(60, 60)),
          backgroundColor: WidgetStatePropertyAll(
            Theme.of(context).primaryColor,
          ),
          foregroundColor: WidgetStatePropertyAll(
            Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        onPressed: () {
          if (stopped) {
            _messageCubit.start();
          } else {
            _messageCubit.stop();
          }
        },
      ),
    );
  }

  ListView listBuilder(List<Message> messages) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 24,
            backgroundColor: Colors.grey.withValues(alpha: 0.3),
            child: const Icon(Icons.message_outlined),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messages[index].phoneNumber,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                messages[index].content,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          trailing: Text(
            index == 0 ? 'Sending' : 'Waiting',
            style: TextStyle(color: index == 0 ? Colors.green : Colors.amber),
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

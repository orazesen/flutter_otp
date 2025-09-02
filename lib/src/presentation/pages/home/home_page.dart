import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/app/router/app_router.gr.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';
import 'package:flutter_otp/src/presentation/cubits/history/history_cubit.dart';
import 'package:flutter_otp/src/presentation/cubits/message/message_cubit.dart';
import 'package:flutter_otp/src/presentation/widgets/app_app_bar.dart';

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
      appBar: AppAppBar(title: 'Messenger'),
      body: BlocConsumer<MessageCubit, MessageState>(
        bloc: _messageCubit,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            failed: (message) {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(message)));
            },
            sent: (sentMessage) {
              context.read<HistoryCubit>().addMessage(sentMessage);
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            initial: () {
              return const Center(child: CircularProgressIndicator());
            },
            failed: (message) {
              return Center(child: Text(message));
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
          onTap: () {
            context.router.push(MessageDetailRoute(message: messages[index]));
          },
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }
}

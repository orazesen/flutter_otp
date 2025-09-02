import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_otp/app/router/app_router.gr.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';
import 'package:flutter_otp/src/domain/types/message_status.dart';
import 'package:flutter_otp/src/presentation/cubits/history/history_cubit.dart';
import 'package:flutter_otp/src/presentation/widgets/app_app_bar.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(title: 'Histories'),
      body: BlocBuilder<HistoryCubit, HistoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return const Center(child: CircularProgressIndicator());
            },
            failed: () {
              return const Center(child: Text("Something went wrong!"));
            },
            initial: () {
              return const Center(child: Text("List is empty"));
            },
            loaded: (messages) {
              if (messages.isEmpty) {
                return const Center(child: Text("List is empty"));
              } else {
                return RefreshIndicator(
                  onRefresh: () async {
                    setState(() {});
                  },
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.grey.withValues(alpha: 0.3),
                          child: const Icon(Icons.message_outlined),
                        ),
                        title: Text(
                          messages[index].phoneNumber,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text(
                          messages[index].content,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              DateFormat(
                                'HH:mm dd/MM/yyyy',
                              ).format(messages[index].sentAt),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                color: color(messages[index]),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          context.router.push(
                            MessageDetailRoute(message: messages[index]),
                          );
                        },
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: messages.length,
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }

  String status(Message message) {
    String status = '';
    switch (message.status) {
      case MessageStatus.created:
        status = 'created';
        break;
      case MessageStatus.sent:
        status = 'sent';
        break;
      case MessageStatus.failed:
        status = 'failed';
        break;
      default:
    }
    return status;
  }

  Color color(Message message) {
    Color color = Colors.red;
    if (message.status == MessageStatus.created) {
      color = Colors.yellow;
    } else if (message.status == MessageStatus.failed) {
      color = Colors.red;
    } else if (message.status == MessageStatus.sent) {
      color = Colors.green;
    } else {
      color = Colors.orange;
    }
    return color;
  }
}

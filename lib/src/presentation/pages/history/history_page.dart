import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';
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
      appBar: AppBar(title: Text('Histories')),
      body: FutureBuilder<List<Message>>(
        future: loadHistory(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return const Center(child: Text("Something went wrong!"));
            } else {
              if (snapshot.data!.isEmpty) {
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
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data![index].phoneNumber,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              snapshot.data![index].content,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                        trailing: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              DateFormat(
                                'HH:mm dd/MM/yyyy',
                              ).format(dateTime(snapshot.data![index])),
                              // style: TextStyle(
                              //   color: color(snapshot.data![index]),
                              // ),
                            ),
                            const SizedBox(height: 6),
                            Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                color: color(snapshot.data![index]),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            // Text(
                            //   status(snapshot.data![index]),
                            //   textAlign: TextAlign.right,
                            //   style: TextStyle(
                            //     color: color(snapshot.data![index]),
                            //   ),
                            // ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: snapshot.data!.length,
                  ),
                );
              }
            }
          } else {
            return const Center(child: Text("Something went wrong!"));
          }
        },
      ),
    );
  }

  Future<List<Message>> loadHistory() async {
    // LocalDatabase messageProvider = LocalDatabase();
    // await Future.delayed(const Duration(seconds: 1));
    // final list = await messageProvider.getMessages();
    return [];
  }

  String status(Message message) {
    String status = '';
    // if (message.informedAt != null) {
    //   status = 'informed';
    // } else if (message.failedAt != null) {
    //   status = 'failed';
    // } else if (message.sentAt != null) {
    //   status = 'sent';
    // } else {
    //   status = 'received';
    // }
    return status;
  }

  DateTime dateTime(Message message) {
    DateTime dateTime = DateTime.now();
    // if (message.informedAt != null) {
    //   dateTime = message.informedAt!;
    // } else if (message.failedAt != null) {
    //   dateTime = message.failedAt!;
    // } else if (message.sentAt != null) {
    //   dateTime = message.sentAt!;
    // } else {
    //   dateTime = message.receivedAt;
    // }
    return dateTime;
  }

  Color color(Message message) {
    Color color = Colors.red;
    // if (message.informedAt != null) {
    //   color = Colors.green;
    // } else if (message.failedAt != null) {
    //   color = Colors.red;
    // } else if (message.sentAt != null) {
    //   color = Colors.yellow;
    // } else {
    //   color = Colors.orange;
    // }
    return color;
  }
}

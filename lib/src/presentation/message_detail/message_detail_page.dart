import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';

@RoutePage()
class MessageDetailPage extends StatelessWidget {
  const MessageDetailPage({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(message.phoneNumber)),
      body: Center(child: Text(message.content)),
    );
  }
}

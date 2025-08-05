import 'package:flutter/material.dart';
import 'package:flutter_otp/src/domain/entities/message.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({required this.message, super.key});
  final Message message;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(message.phoneNumber), onTap: () {});
  }
}

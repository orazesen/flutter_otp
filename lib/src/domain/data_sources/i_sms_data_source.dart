import 'package:telephony/telephony.dart';

abstract class ISmsDataSource {
  Future<bool> sendMessage({
    required String phoneNumber,
    required String content,
    Function(SendStatus)? statusListener,
  });
}

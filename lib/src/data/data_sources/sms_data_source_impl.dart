import 'dart:developer';

import 'package:flutter_otp/src/domain/data_sources/i_sms_data_source.dart';
import 'package:injectable/injectable.dart';
import 'package:telephony/telephony.dart';

@Injectable(as: ISmsDataSource)
class SmsDataSourceImpl implements ISmsDataSource {
  final Telephony _telephony = Telephony.instance;

  @override
  Future<bool> sendMessage({
    required String phoneNumber,
    required String content,
    Function(SendStatus)? statusListener,
  }) async {
    final permissionsGranted = await _telephony.requestPhoneAndSmsPermissions;

    if (permissionsGranted == null || !permissionsGranted) {
      log('Permission not granted!');
      return false;
    }

    try {
      await _telephony.sendSms(
        to: phoneNumber,
        message: content,
        statusListener: statusListener,
      );

      // await Future.delayed(Duration(seconds: 2));

      return true;
    } catch (e) {
      rethrow;
    }
  }
}

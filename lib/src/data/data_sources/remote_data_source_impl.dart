import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_otp/src/data/models/message/message_model.dart';
import 'package:flutter_otp/src/domain/data_sources/i_local_data_source.dart';
import 'package:flutter_otp/src/domain/data_sources/i_remote_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: IRemoteDataSource)
class RemoteDataSourceImpl implements IRemoteDataSource {
  const RemoteDataSourceImpl(this._localDataSource);

  final ILocalDataSource _localDataSource;

  @override
  Future<List<MessageModel>> getMessages() async {
    final settings = _localDataSource.getSettings();
    final Dio dio = Dio(
      BaseOptions(
        headers: {
          'X-API-Key': settings.apiKey,
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    try {
      final response = await dio.get(settings.listenApi);
      final list = response.data['messages'] as List;

      return list
          .map((e) => MessageModel.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<bool> updateMessages({required List<MessageModel> messages}) async {
    final Map<String, dynamic> body = {
      'updates': messages.map((e) {
        return {
          "queue_id": e.queueId,
          "status": e.status,
          "error_message": e.errorMessage,
          "sent_at": e.sentAt?.toIso8601String(),
        };
      }).toList(),
    };

    final settings = _localDataSource.getSettings();

    final Dio dio = Dio(
      BaseOptions(
        headers: {
          'X-API-Key': settings.apiKey,
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
    try {
      Response response = await dio.post(
        settings.notifyApi,
        data: json.encode(body),
      );
      return response.data['success'];
    } catch (e) {
      rethrow;
    }
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsModel _$SettingsModelFromJson(Map<String, dynamic> json) =>
    _SettingsModel(
      listenApi: json['listenApi'] as String? ?? '',
      notifyApi: json['notifyApi'] as String? ?? '',
      listenInterval: (json['listenInterval'] as num?)?.toInt() ?? 30,
      sentInterval: (json['sentInterval'] as num?)?.toInt() ?? 15,
      notifyServer: json['notifyServer'] as bool? ?? true,
      apiKey: json['apiKey'] as String? ?? '',
    );

Map<String, dynamic> _$SettingsModelToJson(_SettingsModel instance) =>
    <String, dynamic>{
      'listenApi': instance.listenApi,
      'notifyApi': instance.notifyApi,
      'listenInterval': instance.listenInterval,
      'sentInterval': instance.sentInterval,
      'notifyServer': instance.notifyServer,
      'apiKey': instance.apiKey,
    };

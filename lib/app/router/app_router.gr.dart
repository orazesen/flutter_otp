// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:flutter_otp/src/domain/entities/message.dart' as _i8;
import 'package:flutter_otp/src/presentation/message_detail/message_detail_page.dart'
    as _i4;
import 'package:flutter_otp/src/presentation/pages/history/history_page.dart'
    as _i1;
import 'package:flutter_otp/src/presentation/pages/home/home_page.dart' as _i2;
import 'package:flutter_otp/src/presentation/pages/main/main_page.dart' as _i3;
import 'package:flutter_otp/src/presentation/pages/settings/settings_page.dart'
    as _i5;

/// generated route for
/// [_i1.HistoryPage]
class HistoryRoute extends _i6.PageRouteInfo<void> {
  const HistoryRoute({List<_i6.PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HistoryPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i6.PageRouteInfo<void> {
  const MainRoute({List<_i6.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.MainPage();
    },
  );
}

/// generated route for
/// [_i4.MessageDetailPage]
class MessageDetailRoute extends _i6.PageRouteInfo<MessageDetailRouteArgs> {
  MessageDetailRoute({
    _i7.Key? key,
    required _i8.Message message,
    List<_i6.PageRouteInfo>? children,
  }) : super(
         MessageDetailRoute.name,
         args: MessageDetailRouteArgs(key: key, message: message),
         initialChildren: children,
       );

  static const String name = 'MessageDetailRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MessageDetailRouteArgs>();
      return _i4.MessageDetailPage(key: args.key, message: args.message);
    },
  );
}

class MessageDetailRouteArgs {
  const MessageDetailRouteArgs({this.key, required this.message});

  final _i7.Key? key;

  final _i8.Message message;

  @override
  String toString() {
    return 'MessageDetailRouteArgs{key: $key, message: $message}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MessageDetailRouteArgs) return false;
    return key == other.key && message == other.message;
  }

  @override
  int get hashCode => key.hashCode ^ message.hashCode;
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsRoute extends _i6.PageRouteInfo<void> {
  const SettingsRoute({List<_i6.PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SettingsPage();
    },
  );
}

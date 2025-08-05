// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SettingsModel {

 String get listenApi; String get notifyApi; int get listenInterval; int get sentInterval; bool get notifyServer; String get apiKey;
/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsModelCopyWith<SettingsModel> get copyWith => _$SettingsModelCopyWithImpl<SettingsModel>(this as SettingsModel, _$identity);

  /// Serializes this SettingsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsModel&&(identical(other.listenApi, listenApi) || other.listenApi == listenApi)&&(identical(other.notifyApi, notifyApi) || other.notifyApi == notifyApi)&&(identical(other.listenInterval, listenInterval) || other.listenInterval == listenInterval)&&(identical(other.sentInterval, sentInterval) || other.sentInterval == sentInterval)&&(identical(other.notifyServer, notifyServer) || other.notifyServer == notifyServer)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listenApi,notifyApi,listenInterval,sentInterval,notifyServer,apiKey);

@override
String toString() {
  return 'SettingsModel(listenApi: $listenApi, notifyApi: $notifyApi, listenInterval: $listenInterval, sentInterval: $sentInterval, notifyServer: $notifyServer, apiKey: $apiKey)';
}


}

/// @nodoc
abstract mixin class $SettingsModelCopyWith<$Res>  {
  factory $SettingsModelCopyWith(SettingsModel value, $Res Function(SettingsModel) _then) = _$SettingsModelCopyWithImpl;
@useResult
$Res call({
 String listenApi, String notifyApi, int listenInterval, int sentInterval, bool notifyServer, String apiKey
});




}
/// @nodoc
class _$SettingsModelCopyWithImpl<$Res>
    implements $SettingsModelCopyWith<$Res> {
  _$SettingsModelCopyWithImpl(this._self, this._then);

  final SettingsModel _self;
  final $Res Function(SettingsModel) _then;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listenApi = null,Object? notifyApi = null,Object? listenInterval = null,Object? sentInterval = null,Object? notifyServer = null,Object? apiKey = null,}) {
  return _then(_self.copyWith(
listenApi: null == listenApi ? _self.listenApi : listenApi // ignore: cast_nullable_to_non_nullable
as String,notifyApi: null == notifyApi ? _self.notifyApi : notifyApi // ignore: cast_nullable_to_non_nullable
as String,listenInterval: null == listenInterval ? _self.listenInterval : listenInterval // ignore: cast_nullable_to_non_nullable
as int,sentInterval: null == sentInterval ? _self.sentInterval : sentInterval // ignore: cast_nullable_to_non_nullable
as int,notifyServer: null == notifyServer ? _self.notifyServer : notifyServer // ignore: cast_nullable_to_non_nullable
as bool,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SettingsModel].
extension SettingsModelPatterns on SettingsModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsModel value)  $default,){
final _that = this;
switch (_that) {
case _SettingsModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsModel value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String listenApi,  String notifyApi,  int listenInterval,  int sentInterval,  bool notifyServer,  String apiKey)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
return $default(_that.listenApi,_that.notifyApi,_that.listenInterval,_that.sentInterval,_that.notifyServer,_that.apiKey);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String listenApi,  String notifyApi,  int listenInterval,  int sentInterval,  bool notifyServer,  String apiKey)  $default,) {final _that = this;
switch (_that) {
case _SettingsModel():
return $default(_that.listenApi,_that.notifyApi,_that.listenInterval,_that.sentInterval,_that.notifyServer,_that.apiKey);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String listenApi,  String notifyApi,  int listenInterval,  int sentInterval,  bool notifyServer,  String apiKey)?  $default,) {final _that = this;
switch (_that) {
case _SettingsModel() when $default != null:
return $default(_that.listenApi,_that.notifyApi,_that.listenInterval,_that.sentInterval,_that.notifyServer,_that.apiKey);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SettingsModel implements SettingsModel {
   _SettingsModel({this.listenApi = '', this.notifyApi = '', this.listenInterval = 30, this.sentInterval = 15, this.notifyServer = true, this.apiKey = ''});
  factory _SettingsModel.fromJson(Map<String, dynamic> json) => _$SettingsModelFromJson(json);

@override@JsonKey() final  String listenApi;
@override@JsonKey() final  String notifyApi;
@override@JsonKey() final  int listenInterval;
@override@JsonKey() final  int sentInterval;
@override@JsonKey() final  bool notifyServer;
@override@JsonKey() final  String apiKey;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsModelCopyWith<_SettingsModel> get copyWith => __$SettingsModelCopyWithImpl<_SettingsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsModel&&(identical(other.listenApi, listenApi) || other.listenApi == listenApi)&&(identical(other.notifyApi, notifyApi) || other.notifyApi == notifyApi)&&(identical(other.listenInterval, listenInterval) || other.listenInterval == listenInterval)&&(identical(other.sentInterval, sentInterval) || other.sentInterval == sentInterval)&&(identical(other.notifyServer, notifyServer) || other.notifyServer == notifyServer)&&(identical(other.apiKey, apiKey) || other.apiKey == apiKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,listenApi,notifyApi,listenInterval,sentInterval,notifyServer,apiKey);

@override
String toString() {
  return 'SettingsModel(listenApi: $listenApi, notifyApi: $notifyApi, listenInterval: $listenInterval, sentInterval: $sentInterval, notifyServer: $notifyServer, apiKey: $apiKey)';
}


}

/// @nodoc
abstract mixin class _$SettingsModelCopyWith<$Res> implements $SettingsModelCopyWith<$Res> {
  factory _$SettingsModelCopyWith(_SettingsModel value, $Res Function(_SettingsModel) _then) = __$SettingsModelCopyWithImpl;
@override @useResult
$Res call({
 String listenApi, String notifyApi, int listenInterval, int sentInterval, bool notifyServer, String apiKey
});




}
/// @nodoc
class __$SettingsModelCopyWithImpl<$Res>
    implements _$SettingsModelCopyWith<$Res> {
  __$SettingsModelCopyWithImpl(this._self, this._then);

  final _SettingsModel _self;
  final $Res Function(_SettingsModel) _then;

/// Create a copy of SettingsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listenApi = null,Object? notifyApi = null,Object? listenInterval = null,Object? sentInterval = null,Object? notifyServer = null,Object? apiKey = null,}) {
  return _then(_SettingsModel(
listenApi: null == listenApi ? _self.listenApi : listenApi // ignore: cast_nullable_to_non_nullable
as String,notifyApi: null == notifyApi ? _self.notifyApi : notifyApi // ignore: cast_nullable_to_non_nullable
as String,listenInterval: null == listenInterval ? _self.listenInterval : listenInterval // ignore: cast_nullable_to_non_nullable
as int,sentInterval: null == sentInterval ? _self.sentInterval : sentInterval // ignore: cast_nullable_to_non_nullable
as int,notifyServer: null == notifyServer ? _self.notifyServer : notifyServer // ignore: cast_nullable_to_non_nullable
as bool,apiKey: null == apiKey ? _self.apiKey : apiKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

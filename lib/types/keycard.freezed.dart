// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keycard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Keycard _$KeycardFromJson(Map<String, dynamic> json) {
  return _Keycard.fromJson(json);
}

/// @nodoc
class _$KeycardTearOff {
  const _$KeycardTearOff();

  _Keycard call(
      {required String id,
      required String gameId,
      required String userId,
      required int userType,
      required String secretId,
      required String stateId,
      required int seat}) {
    return _Keycard(
      id: id,
      gameId: gameId,
      userId: userId,
      userType: userType,
      secretId: secretId,
      stateId: stateId,
      seat: seat,
    );
  }

  Keycard fromJson(Map<String, Object?> json) {
    return Keycard.fromJson(json);
  }
}

/// @nodoc
const $Keycard = _$KeycardTearOff();

/// @nodoc
mixin _$Keycard {
  String get id => throw _privateConstructorUsedError;
  String get gameId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  int get userType => throw _privateConstructorUsedError;
  String get secretId => throw _privateConstructorUsedError;
  String get stateId => throw _privateConstructorUsedError;
  int get seat => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeycardCopyWith<Keycard> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeycardCopyWith<$Res> {
  factory $KeycardCopyWith(Keycard value, $Res Function(Keycard) then) =
      _$KeycardCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String gameId,
      String userId,
      int userType,
      String secretId,
      String stateId,
      int seat});
}

/// @nodoc
class _$KeycardCopyWithImpl<$Res> implements $KeycardCopyWith<$Res> {
  _$KeycardCopyWithImpl(this._value, this._then);

  final Keycard _value;
  // ignore: unused_field
  final $Res Function(Keycard) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? gameId = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? secretId = freezed,
    Object? stateId = freezed,
    Object? seat = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      secretId: secretId == freezed
          ? _value.secretId
          : secretId // ignore: cast_nullable_to_non_nullable
              as String,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      seat: seat == freezed
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$KeycardCopyWith<$Res> implements $KeycardCopyWith<$Res> {
  factory _$KeycardCopyWith(_Keycard value, $Res Function(_Keycard) then) =
      __$KeycardCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String gameId,
      String userId,
      int userType,
      String secretId,
      String stateId,
      int seat});
}

/// @nodoc
class __$KeycardCopyWithImpl<$Res> extends _$KeycardCopyWithImpl<$Res>
    implements _$KeycardCopyWith<$Res> {
  __$KeycardCopyWithImpl(_Keycard _value, $Res Function(_Keycard) _then)
      : super(_value, (v) => _then(v as _Keycard));

  @override
  _Keycard get _value => super._value as _Keycard;

  @override
  $Res call({
    Object? id = freezed,
    Object? gameId = freezed,
    Object? userId = freezed,
    Object? userType = freezed,
    Object? secretId = freezed,
    Object? stateId = freezed,
    Object? seat = freezed,
  }) {
    return _then(_Keycard(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      gameId: gameId == freezed
          ? _value.gameId
          : gameId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      secretId: secretId == freezed
          ? _value.secretId
          : secretId // ignore: cast_nullable_to_non_nullable
              as String,
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      seat: seat == freezed
          ? _value.seat
          : seat // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Keycard extends _Keycard {
  _$_Keycard(
      {required this.id,
      required this.gameId,
      required this.userId,
      required this.userType,
      required this.secretId,
      required this.stateId,
      required this.seat})
      : super._();

  factory _$_Keycard.fromJson(Map<String, dynamic> json) =>
      _$$_KeycardFromJson(json);

  @override
  final String id;
  @override
  final String gameId;
  @override
  final String userId;
  @override
  final int userType;
  @override
  final String secretId;
  @override
  final String stateId;
  @override
  final int seat;

  @override
  String toString() {
    return 'Keycard(id: $id, gameId: $gameId, userId: $userId, userType: $userType, secretId: $secretId, stateId: $stateId, seat: $seat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Keycard &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.gameId, gameId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.secretId, secretId) &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality().equals(other.seat, seat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(gameId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(secretId),
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(seat));

  @JsonKey(ignore: true)
  @override
  _$KeycardCopyWith<_Keycard> get copyWith =>
      __$KeycardCopyWithImpl<_Keycard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeycardToJson(this);
  }
}

abstract class _Keycard extends Keycard {
  factory _Keycard(
      {required String id,
      required String gameId,
      required String userId,
      required int userType,
      required String secretId,
      required String stateId,
      required int seat}) = _$_Keycard;
  _Keycard._() : super._();

  factory _Keycard.fromJson(Map<String, dynamic> json) = _$_Keycard.fromJson;

  @override
  String get id;
  @override
  String get gameId;
  @override
  String get userId;
  @override
  int get userType;
  @override
  String get secretId;
  @override
  String get stateId;
  @override
  int get seat;
  @override
  @JsonKey(ignore: true)
  _$KeycardCopyWith<_Keycard> get copyWith =>
      throw _privateConstructorUsedError;
}

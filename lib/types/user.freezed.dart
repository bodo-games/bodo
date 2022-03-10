// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String id,
      required String mail,
      required String nickname,
      required String iconUrl,
      required int chips,
      required List<SymbolPocket> symbolPockets,
      required String selfIntro,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _User(
      id: id,
      mail: mail,
      nickname: nickname,
      iconUrl: iconUrl,
      chips: chips,
      symbolPockets: symbolPockets,
      selfIntro: selfIntro,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get id => throw _privateConstructorUsedError;
  String get mail => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String get iconUrl => throw _privateConstructorUsedError;
  int get chips => throw _privateConstructorUsedError;
  List<SymbolPocket> get symbolPockets => throw _privateConstructorUsedError;
  String get selfIntro => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String mail,
      String nickname,
      String iconUrl,
      int chips,
      List<SymbolPocket> symbolPockets,
      String selfIntro,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? mail = freezed,
    Object? nickname = freezed,
    Object? iconUrl = freezed,
    Object? chips = freezed,
    Object? symbolPockets = freezed,
    Object? selfIntro = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      chips: chips == freezed
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as int,
      symbolPockets: symbolPockets == freezed
          ? _value.symbolPockets
          : symbolPockets // ignore: cast_nullable_to_non_nullable
              as List<SymbolPocket>,
      selfIntro: selfIntro == freezed
          ? _value.selfIntro
          : selfIntro // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String mail,
      String nickname,
      String iconUrl,
      int chips,
      List<SymbolPocket> symbolPockets,
      String selfIntro,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? id = freezed,
    Object? mail = freezed,
    Object? nickname = freezed,
    Object? iconUrl = freezed,
    Object? chips = freezed,
    Object? symbolPockets = freezed,
    Object? selfIntro = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: iconUrl == freezed
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String,
      chips: chips == freezed
          ? _value.chips
          : chips // ignore: cast_nullable_to_non_nullable
              as int,
      symbolPockets: symbolPockets == freezed
          ? _value.symbolPockets
          : symbolPockets // ignore: cast_nullable_to_non_nullable
              as List<SymbolPocket>,
      selfIntro: selfIntro == freezed
          ? _value.selfIntro
          : selfIntro // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_User extends _User {
  _$_User(
      {required this.id,
      required this.mail,
      required this.nickname,
      required this.iconUrl,
      required this.chips,
      required this.symbolPockets,
      required this.selfIntro,
      required this.createdAt,
      required this.updatedAt})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String id;
  @override
  final String mail;
  @override
  final String nickname;
  @override
  final String iconUrl;
  @override
  final int chips;
  @override
  final List<SymbolPocket> symbolPockets;
  @override
  final String selfIntro;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'User(id: $id, mail: $mail, nickname: $nickname, iconUrl: $iconUrl, chips: $chips, symbolPockets: $symbolPockets, selfIntro: $selfIntro, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.mail, mail) &&
            const DeepCollectionEquality().equals(other.nickname, nickname) &&
            const DeepCollectionEquality().equals(other.iconUrl, iconUrl) &&
            const DeepCollectionEquality().equals(other.chips, chips) &&
            const DeepCollectionEquality()
                .equals(other.symbolPockets, symbolPockets) &&
            const DeepCollectionEquality().equals(other.selfIntro, selfIntro) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(mail),
      const DeepCollectionEquality().hash(nickname),
      const DeepCollectionEquality().hash(iconUrl),
      const DeepCollectionEquality().hash(chips),
      const DeepCollectionEquality().hash(symbolPockets),
      const DeepCollectionEquality().hash(selfIntro),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User extends User {
  factory _User(
      {required String id,
      required String mail,
      required String nickname,
      required String iconUrl,
      required int chips,
      required List<SymbolPocket> symbolPockets,
      required String selfIntro,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_User;
  _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get id;
  @override
  String get mail;
  @override
  String get nickname;
  @override
  String get iconUrl;
  @override
  int get chips;
  @override
  List<SymbolPocket> get symbolPockets;
  @override
  String get selfIntro;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

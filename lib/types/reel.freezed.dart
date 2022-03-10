// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reel _$ReelFromJson(Map<String, dynamic> json) {
  return _Reel.fromJson(json);
}

/// @nodoc
class _$ReelTearOff {
  const _$ReelTearOff();

  _Reel call({required int id, required List<int> symbols}) {
    return _Reel(
      id: id,
      symbols: symbols,
    );
  }

  Reel fromJson(Map<String, Object?> json) {
    return Reel.fromJson(json);
  }
}

/// @nodoc
const $Reel = _$ReelTearOff();

/// @nodoc
mixin _$Reel {
  int get id => throw _privateConstructorUsedError;
  List<int> get symbols => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReelCopyWith<Reel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReelCopyWith<$Res> {
  factory $ReelCopyWith(Reel value, $Res Function(Reel) then) =
      _$ReelCopyWithImpl<$Res>;
  $Res call({int id, List<int> symbols});
}

/// @nodoc
class _$ReelCopyWithImpl<$Res> implements $ReelCopyWith<$Res> {
  _$ReelCopyWithImpl(this._value, this._then);

  final Reel _value;
  // ignore: unused_field
  final $Res Function(Reel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbols = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$ReelCopyWith<$Res> implements $ReelCopyWith<$Res> {
  factory _$ReelCopyWith(_Reel value, $Res Function(_Reel) then) =
      __$ReelCopyWithImpl<$Res>;
  @override
  $Res call({int id, List<int> symbols});
}

/// @nodoc
class __$ReelCopyWithImpl<$Res> extends _$ReelCopyWithImpl<$Res>
    implements _$ReelCopyWith<$Res> {
  __$ReelCopyWithImpl(_Reel _value, $Res Function(_Reel) _then)
      : super(_value, (v) => _then(v as _Reel));

  @override
  _Reel get _value => super._value as _Reel;

  @override
  $Res call({
    Object? id = freezed,
    Object? symbols = freezed,
  }) {
    return _then(_Reel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Reel extends _Reel {
  _$_Reel({required this.id, required this.symbols}) : super._();

  factory _$_Reel.fromJson(Map<String, dynamic> json) => _$$_ReelFromJson(json);

  @override
  final int id;
  @override
  final List<int> symbols;

  @override
  String toString() {
    return 'Reel(id: $id, symbols: $symbols)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.symbols, symbols));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(symbols));

  @JsonKey(ignore: true)
  @override
  _$ReelCopyWith<_Reel> get copyWith =>
      __$ReelCopyWithImpl<_Reel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReelToJson(this);
  }
}

abstract class _Reel extends Reel {
  factory _Reel({required int id, required List<int> symbols}) = _$_Reel;
  _Reel._() : super._();

  factory _Reel.fromJson(Map<String, dynamic> json) = _$_Reel.fromJson;

  @override
  int get id;
  @override
  List<int> get symbols;
  @override
  @JsonKey(ignore: true)
  _$ReelCopyWith<_Reel> get copyWith => throw _privateConstructorUsedError;
}

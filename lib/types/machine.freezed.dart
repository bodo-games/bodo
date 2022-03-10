// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'machine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Machine _$MachineFromJson(Map<String, dynamic> json) {
  return _Machine.fromJson(json);
}

/// @nodoc
class _$MachineTearOff {
  const _$MachineTearOff();

  _Machine call(
      {required int id,
      required String name,
      required String miniImageUrl,
      required String accentColorHex,
      required String baseColorHex,
      required String borderColorHex,
      required List<int> reels,
      required int spinCost,
      required List<int> memberSymbols}) {
    return _Machine(
      id: id,
      name: name,
      miniImageUrl: miniImageUrl,
      accentColorHex: accentColorHex,
      baseColorHex: baseColorHex,
      borderColorHex: borderColorHex,
      reels: reels,
      spinCost: spinCost,
      memberSymbols: memberSymbols,
    );
  }

  Machine fromJson(Map<String, Object?> json) {
    return Machine.fromJson(json);
  }
}

/// @nodoc
const $Machine = _$MachineTearOff();

/// @nodoc
mixin _$Machine {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get miniImageUrl => throw _privateConstructorUsedError;
  String get accentColorHex => throw _privateConstructorUsedError;
  String get baseColorHex => throw _privateConstructorUsedError;
  String get borderColorHex => throw _privateConstructorUsedError;
  List<int> get reels => throw _privateConstructorUsedError;
  int get spinCost => throw _privateConstructorUsedError;
  List<int> get memberSymbols => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MachineCopyWith<Machine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MachineCopyWith<$Res> {
  factory $MachineCopyWith(Machine value, $Res Function(Machine) then) =
      _$MachineCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String miniImageUrl,
      String accentColorHex,
      String baseColorHex,
      String borderColorHex,
      List<int> reels,
      int spinCost,
      List<int> memberSymbols});
}

/// @nodoc
class _$MachineCopyWithImpl<$Res> implements $MachineCopyWith<$Res> {
  _$MachineCopyWithImpl(this._value, this._then);

  final Machine _value;
  // ignore: unused_field
  final $Res Function(Machine) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? miniImageUrl = freezed,
    Object? accentColorHex = freezed,
    Object? baseColorHex = freezed,
    Object? borderColorHex = freezed,
    Object? reels = freezed,
    Object? spinCost = freezed,
    Object? memberSymbols = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      miniImageUrl: miniImageUrl == freezed
          ? _value.miniImageUrl
          : miniImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accentColorHex: accentColorHex == freezed
          ? _value.accentColorHex
          : accentColorHex // ignore: cast_nullable_to_non_nullable
              as String,
      baseColorHex: baseColorHex == freezed
          ? _value.baseColorHex
          : baseColorHex // ignore: cast_nullable_to_non_nullable
              as String,
      borderColorHex: borderColorHex == freezed
          ? _value.borderColorHex
          : borderColorHex // ignore: cast_nullable_to_non_nullable
              as String,
      reels: reels == freezed
          ? _value.reels
          : reels // ignore: cast_nullable_to_non_nullable
              as List<int>,
      spinCost: spinCost == freezed
          ? _value.spinCost
          : spinCost // ignore: cast_nullable_to_non_nullable
              as int,
      memberSymbols: memberSymbols == freezed
          ? _value.memberSymbols
          : memberSymbols // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$MachineCopyWith<$Res> implements $MachineCopyWith<$Res> {
  factory _$MachineCopyWith(_Machine value, $Res Function(_Machine) then) =
      __$MachineCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String miniImageUrl,
      String accentColorHex,
      String baseColorHex,
      String borderColorHex,
      List<int> reels,
      int spinCost,
      List<int> memberSymbols});
}

/// @nodoc
class __$MachineCopyWithImpl<$Res> extends _$MachineCopyWithImpl<$Res>
    implements _$MachineCopyWith<$Res> {
  __$MachineCopyWithImpl(_Machine _value, $Res Function(_Machine) _then)
      : super(_value, (v) => _then(v as _Machine));

  @override
  _Machine get _value => super._value as _Machine;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? miniImageUrl = freezed,
    Object? accentColorHex = freezed,
    Object? baseColorHex = freezed,
    Object? borderColorHex = freezed,
    Object? reels = freezed,
    Object? spinCost = freezed,
    Object? memberSymbols = freezed,
  }) {
    return _then(_Machine(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      miniImageUrl: miniImageUrl == freezed
          ? _value.miniImageUrl
          : miniImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      accentColorHex: accentColorHex == freezed
          ? _value.accentColorHex
          : accentColorHex // ignore: cast_nullable_to_non_nullable
              as String,
      baseColorHex: baseColorHex == freezed
          ? _value.baseColorHex
          : baseColorHex // ignore: cast_nullable_to_non_nullable
              as String,
      borderColorHex: borderColorHex == freezed
          ? _value.borderColorHex
          : borderColorHex // ignore: cast_nullable_to_non_nullable
              as String,
      reels: reels == freezed
          ? _value.reels
          : reels // ignore: cast_nullable_to_non_nullable
              as List<int>,
      spinCost: spinCost == freezed
          ? _value.spinCost
          : spinCost // ignore: cast_nullable_to_non_nullable
              as int,
      memberSymbols: memberSymbols == freezed
          ? _value.memberSymbols
          : memberSymbols // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Machine extends _Machine {
  _$_Machine(
      {required this.id,
      required this.name,
      required this.miniImageUrl,
      required this.accentColorHex,
      required this.baseColorHex,
      required this.borderColorHex,
      required this.reels,
      required this.spinCost,
      required this.memberSymbols})
      : super._();

  factory _$_Machine.fromJson(Map<String, dynamic> json) =>
      _$$_MachineFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String miniImageUrl;
  @override
  final String accentColorHex;
  @override
  final String baseColorHex;
  @override
  final String borderColorHex;
  @override
  final List<int> reels;
  @override
  final int spinCost;
  @override
  final List<int> memberSymbols;

  @override
  String toString() {
    return 'Machine(id: $id, name: $name, miniImageUrl: $miniImageUrl, accentColorHex: $accentColorHex, baseColorHex: $baseColorHex, borderColorHex: $borderColorHex, reels: $reels, spinCost: $spinCost, memberSymbols: $memberSymbols)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Machine &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.miniImageUrl, miniImageUrl) &&
            const DeepCollectionEquality()
                .equals(other.accentColorHex, accentColorHex) &&
            const DeepCollectionEquality()
                .equals(other.baseColorHex, baseColorHex) &&
            const DeepCollectionEquality()
                .equals(other.borderColorHex, borderColorHex) &&
            const DeepCollectionEquality().equals(other.reels, reels) &&
            const DeepCollectionEquality().equals(other.spinCost, spinCost) &&
            const DeepCollectionEquality()
                .equals(other.memberSymbols, memberSymbols));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(miniImageUrl),
      const DeepCollectionEquality().hash(accentColorHex),
      const DeepCollectionEquality().hash(baseColorHex),
      const DeepCollectionEquality().hash(borderColorHex),
      const DeepCollectionEquality().hash(reels),
      const DeepCollectionEquality().hash(spinCost),
      const DeepCollectionEquality().hash(memberSymbols));

  @JsonKey(ignore: true)
  @override
  _$MachineCopyWith<_Machine> get copyWith =>
      __$MachineCopyWithImpl<_Machine>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MachineToJson(this);
  }
}

abstract class _Machine extends Machine {
  factory _Machine(
      {required int id,
      required String name,
      required String miniImageUrl,
      required String accentColorHex,
      required String baseColorHex,
      required String borderColorHex,
      required List<int> reels,
      required int spinCost,
      required List<int> memberSymbols}) = _$_Machine;
  _Machine._() : super._();

  factory _Machine.fromJson(Map<String, dynamic> json) = _$_Machine.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get miniImageUrl;
  @override
  String get accentColorHex;
  @override
  String get baseColorHex;
  @override
  String get borderColorHex;
  @override
  List<int> get reels;
  @override
  int get spinCost;
  @override
  List<int> get memberSymbols;
  @override
  @JsonKey(ignore: true)
  _$MachineCopyWith<_Machine> get copyWith =>
      throw _privateConstructorUsedError;
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'symbol_pocket.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory User({
    required String id,
    required String mail,
    required String nickname,
    required String iconUrl,
    required int chips,
    required List<SymbolPocket> symbolPockets,
    required String selfIntro,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

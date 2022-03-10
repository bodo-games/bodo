import 'package:freezed_annotation/freezed_annotation.dart';
part 'keycard.freezed.dart';
part 'keycard.g.dart';

@freezed
class Keycard with _$Keycard {
  const Keycard._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Keycard({
    required String id,
    required String gameId,
    required String userId,
    required int userType,
    required String secretId,
    required String stateId,
    required int seat,
  }) = _Keycard;

  factory Keycard.fromJson(Map<String, dynamic> json) =>
      _$KeycardFromJson(json);
}

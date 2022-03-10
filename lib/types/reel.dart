//
//
//

import 'package:freezed_annotation/freezed_annotation.dart';
part 'reel.freezed.dart';
part 'reel.g.dart';

@freezed
class Reel with _$Reel {
  const Reel._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Reel({
    required int id,
    required List<int> symbols,
  }) = _Reel;

  factory Reel.fromJson(Map<String, dynamic> json) => _$ReelFromJson(json);
}

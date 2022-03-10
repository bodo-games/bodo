//
//
//

import 'package:freezed_annotation/freezed_annotation.dart';
part 'machine.freezed.dart';
part 'machine.g.dart';

@freezed
class Machine with _$Machine {
  const Machine._();

  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory Machine({
    required int id,
    required String name,
    required String miniImageUrl,
    required String accentColorHex,
    required String baseColorHex,
    required String borderColorHex,
    required List<int> reels,
    required int spinCost,
    required List<int> memberSymbols,
  }) = _Machine;

  factory Machine.fromJson(Map<String, dynamic> json) =>
      _$MachineFromJson(json);
}

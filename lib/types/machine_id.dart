//
//
//

enum MachineId {
  classic,
  free,
  developer,
  v1,
}

extension MachineIdExt on MachineId {
  static final rawValues = {
    MachineId.classic: 1,
    MachineId.free: 2,
    MachineId.developer: 3,
    MachineId.v1: 4,
  };
  int get rawValue => rawValues[this]!;

  static MachineId? from(int rawValue) {
    final member =
        rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
    return member;
  }
}

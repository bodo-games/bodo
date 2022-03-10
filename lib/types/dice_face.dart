//
//
//

enum DiceFace {
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
}

extension DiceFaceExt on DiceFace {
  static final Map<DiceFace, int> rawValues = {
    DiceFace.zero: 0,
    DiceFace.one: 1,
    DiceFace.two: 2,
    DiceFace.three: 3,
    DiceFace.four: 4,
    DiceFace.five: 5,
    DiceFace.six: 6,
  };
  static DiceFace from(int rawValue) {
    final DiceFace member = DiceFaceExt.rawValues.keys
        .firstWhere((key) => DiceFaceExt.rawValues[key] == rawValue);
    return member;
  }
}

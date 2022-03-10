//
//
//

enum DrinkId {
  champagne,
  beer,
  brandy,
  cocktail,
  liqueur,
  spirits,
  wine,
}

extension DrinkIdExt on DrinkId {
  static final rawValues = {
    DrinkId.champagne: 0,
    DrinkId.beer: 1,
    DrinkId.brandy: 2,
    DrinkId.cocktail: 3,
    DrinkId.liqueur: 4,
    DrinkId.spirits: 5,
    DrinkId.wine: 6,
  };

  int get rawValue => rawValues[this]!;

  static DrinkId? from(int rawValue) {
    final member =
        rawValues.keys.firstWhere((key) => rawValues[key] == rawValue);
    return member;
  }
}

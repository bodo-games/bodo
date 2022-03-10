//
//
//

import 'package:collection/collection.dart';

enum Flavor {
  develop, // ローカルサーバー環境
  staging, // オンラインの練習サーバー環境
  production, // オンラインの本番サーバー環境
}

extension FlavorExt on Flavor {
  static final rawValues = {
    Flavor.develop: 'develop',
    Flavor.staging: 'staging',
    Flavor.production: 'production',
  };

  String get rawValue => rawValues[this]!;

  static Flavor? from(String rawValue) {
    var member = rawValues.keys.firstWhereOrNull(
      (key) => rawValues[key] == rawValue,
    );
    return member;
  }
}

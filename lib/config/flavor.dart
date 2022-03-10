import 'package:sample_app/types/flavor.dart';
import 'package:sample_app/types/flavor_config.dart';

Flavor _flavor() {
  /// デフォルトは develop 環境
  const defaultFlavor = Flavor.develop;
  // --dart-define=FLAVOR=develop のように指定可能
  const flavorString = String.fromEnvironment('FLAVOR');
  final flavor = FlavorExt.from(flavorString);
  return flavor ?? defaultFlavor;
}

// Flavorごとの設定値
const List<FlavorConfig> flavorConfigs = [
  // Develop
  FlavorConfig(
    flavor: Flavor.develop,
    appClientID: 'none',
    ceterHostUrl: 'no-host',
    shouldUseStub: true,
  ),
  // Staging
  FlavorConfig(
    flavor: Flavor.staging,
    appClientID: 'sampleclientid.ios',
    ceterHostUrl: 'http://localhost:3000',
    shouldUseStub: false,
  ),
  // Production
  FlavorConfig(
    flavor: Flavor.production,
    appClientID: 'sampleclientid.browser',
    ceterHostUrl: 'https://.com',
    shouldUseStub: false,
  ),
];

final FlavorConfig flavorConfig =
    flavorConfigs.firstWhere((con) => con.flavor == _flavor());

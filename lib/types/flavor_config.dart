//
//
//

import 'package:sample_app/types/flavor.dart';

class FlavorConfig {
  final Flavor flavor;
  final String appClientID;
  final String ceterHostUrl;
  final bool shouldUseStub;

  const FlavorConfig({
    required this.flavor,
    required this.appClientID,
    required this.ceterHostUrl,
    required this.shouldUseStub,
  });
}

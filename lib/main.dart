import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/config/flavor.dart';
import 'package:sample_app/features/router/navi_state.dart';
import 'package:sample_app/features/router/navi_window.dart';
import 'package:sample_app/features/router/router.dart';
import 'config/color_theme.dart';

void main() {
  debugPrint('FLAVOR: $flavorConfig.flavor');
  final app = SampleApp();
  final scope = ProviderScope(child: app);
  runApp(scope);
}

class SampleApp extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final naviState = ref.watch(baseNaviState);

    return MaterialApp(
      title: 'bodo (ボード)',
      theme: colorTheme(),
      debugShowCheckedModeBanner: false,
      home: NaviWindow(
        state: naviState,
        popPage: () {
          ref.read(router).popBaseNavi();
        },
      ),
    );
  }
}

import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/state/game_page_host.dart';

class GamePageHost extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('ゲーム画面がビルドされました');
    final gameId = ref.read(gamePageHostState).pickedGameId!;
    return Text('未実装');
  }
}

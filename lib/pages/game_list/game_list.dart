import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/components/chip_counter.dart';
import 'package:sample_app/components/game_picker.dart';
import 'package:sample_app/state/game_page_host.dart';

class GameList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('ゲーム一覧画面がビルドされました');
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            width: 300,
            height: 60,
            child: ChipCounter(500),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: GamePicker(
              onPickedGame: (gameId) {
                debugPrint('選択中のゲームが変更されました');
                final newState = GamePageHostState(pickedGameId: gameId);
                ref.read(gamePageHostState.notifier).update(newState);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              final state = ref.read(gamePageHostState);
              Navigator.of(context)
                  .pushGameOfflinePage(gameId: state.pickedGameId!);
            },
            child: const Text('Play'),
          ),
        ],
      ),
    );
  }
}

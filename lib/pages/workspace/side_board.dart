import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/pages/splash/splash_controller.dart';
import 'package:sample_app/pages/workspace/object_action_menu.dart';

import 'package:sample_app/pages/workspace/side_board.dart';

/// サブレイヤーの状態
class SideBoardState {
  final bool showSideBoard;
  SideBoardState(this.showSideBoard);
}

/// バインド
class _Notifier extends StateNotifier<SideBoardState> {
  _Notifier(SideBoardState state) : super(state);
  update(SideBoardState state) {
    this.state = state;
  }
}

/// 公開
final sideBoardState =
    StateNotifierProvider.autoDispose<_Notifier, SideBoardState>((ref) {
  // 初期化
  final initialState = SideBoardState(
    false,
  );
  return _Notifier(initialState);
});

class SideBoard extends HookConsumerWidget {
  const SideBoard();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('サブレイヤーがビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('サブレイヤーで一度だけ実行します');
      });
    }, const []);

    final state = ref.watch(sideBoardState);

    return Stack(
      children: [
        // バリア barrier
        (state.showSideBoard)
            ? GestureDetector(
                onTap: () {
                  final oldState = ref.read(sideBoardState);
                  final newState = SideBoardState(false);
                  ref.read(sideBoardState.notifier).update(newState);
                },
                child: Container(
                  color: Colors.black.withOpacity(0.5),
                ),
              )
            : const SizedBox(
                width: 0,
              ),
        // 前面
        // オブジェクトアクションメニュー
        state.showSideBoard
            ? Container(
                width: 300,
                height: double.infinity,
                color: Colors.green,
                child: Column(
                  children: [
                    Text('サイドボード'),
                    Text('Action1'),
                    Text('Action2'),
                    Text('Action3'),
                  ],
                ),
              )
            : SizedBox(width: 0),
      ],
    );
  }
}

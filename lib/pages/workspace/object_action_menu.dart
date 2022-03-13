import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/pages/splash/splash_controller.dart';
import 'package:sample_app/pages/workspace/side_board.dart';

/// サブレイヤーの状態
class SubLayerState {
  final bool showSideBoard;
  final bool showObjectActionMenu;
  SubLayerState(this.showSideBoard, this.showObjectActionMenu);
}

/// バインド
class _Notifier extends StateNotifier<SubLayerState> {
  _Notifier(SubLayerState state) : super(state);
  update(SubLayerState state) {
    this.state = state;
  }
}

/// 公開
final subLayerState =
    StateNotifierProvider.autoDispose<_Notifier, SubLayerState>((ref) {
  // 初期化
  final initialState = SubLayerState(
    false,
    false,
  );
  return _Notifier(initialState);
});

class ObjectActionMenu extends HookConsumerWidget {
  const ObjectActionMenu();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('サブレイヤーがビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('サブレイヤーで一度だけ実行します');
      });
    }, const []);

    final state = ref.watch(subLayerState);

    return Stack(
      children: [
        // バリア barrier
        (state.showObjectActionMenu)
            ? GestureDetector(
                onTap: () {
                  final oldState = ref.read(subLayerState);
                  final newState = SubLayerState(false, false);
                  ref.read(subLayerState.notifier).update(newState);
                },
                child: Container(
                  color: Colors.black.withOpacity(0.0),
                ),
              )
            : const SizedBox(
                width: 0,
              ),
        // 前面
        // オブジェクトアクションメニュー
        state.showObjectActionMenu
            ? Center(
                child: Container(
                  width: 400,
                  height: 500,
                  color: Colors.white.withOpacity(0.5),
                  child: Column(
                    children: [
                      Text('オブジェクトアクションメニュー'),
                      Text('Action1'),
                      Text('Action2'),
                      Text('Action3'),
                    ],
                  ),
                ),
              )
            : SizedBox(width: 0),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/pages/splash/splash_controller.dart';
import 'package:sample_app/pages/workspace/main_board_modal.dart';
import 'package:sample_app/pages/workspace/side_board.dart';
import 'package:sample_app/utils/popup_rect.dart';

/// オブジェクトアクションメニューの状態
class ObjectActionMenuState {
  final MainBoardObject object;
  final double objectGlobalX;
  final double objectGlobalY;
  ObjectActionMenuState(this.object, this.objectGlobalX, this.objectGlobalY);
}

/// バインド
class _Notifier extends StateNotifier<ObjectActionMenuState?> {
  _Notifier(ObjectActionMenuState? state) : super(state);
  update(ObjectActionMenuState? state) {
    this.state = state;
  }
}

/// 公開
final objectActionMenuState =
    StateNotifierProvider.autoDispose<_Notifier, ObjectActionMenuState?>((ref) {
  // 初期化
  return _Notifier(null);
});

class ObjectActionMenu extends HookConsumerWidget {
  const ObjectActionMenu();

  Widget positionedMenu(BuildContext context, WidgetRef ref) {
    final state = ref.read(objectActionMenuState);
    final anchorX = state!.objectGlobalX + state.object.width / 2;
    final anchorY = state.objectGlobalY + state.object.height / 2;
    final screenSize = MediaQuery.of(context).size;
    // ポップアップの位置と大きさを計算
    final rect = popupRect(
      anchorX,
      anchorY,
      300,
      300,
      screenSize.width,
      screenSize.height,
    );
    return Positioned(
      top: rect.top,
      left: rect.left,
      width: rect.width,
      height: rect.height,
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
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('サブレイヤーがビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('サブレイヤーで一度だけ実行します');
      });
    }, const []);

    final state = ref.watch(objectActionMenuState);

    return Stack(
      children: [
        // バリア barrier
        (state != null)
            ? GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  ref.read(objectActionMenuState.notifier).update(null);
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
        (state != null) ? positionedMenu(context, ref) : SizedBox(width: 0),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/pages/workspace/object_action_menu.dart';

/// メインボードに配置できるオブジェクト
class MainBoardObject {
  String id;
  double x;
  double y;
  MainBoardObject(this.id, this.x, this.y);
}

/// メインボードの状態
class MainBoardState {
  final List<MainBoardObject> objects;
  MainBoardState(this.objects);
}

/// バインド
class _Notifier extends StateNotifier<MainBoardState> {
  _Notifier(MainBoardState state) : super(state);
  update(MainBoardState state) {
    this.state = state;
  }
}

/// 公開
final mainBoardState =
    StateNotifierProvider.autoDispose<_Notifier, MainBoardState>((ref) {
  // 初期化
  final initialState = MainBoardState(
    [
      MainBoardObject('test1', 0, 0),
      MainBoardObject('test2', 50, 50),
      MainBoardObject('test3', 200, 200),
    ],
  );
  return _Notifier(initialState);
});

/// メインボードView (拡大モーダル)
class MainBoardModal extends HookConsumerWidget {
  const MainBoardModal();

  /// オブジェクトView
  Widget objectView(MainBoardObject object, WidgetRef ref) {
    return Align(
      alignment: Alignment(object.x, object.y),
      child: ElevatedButton(
        onPressed: () {
          debugPrint(object.id);
          final oldState = ref.read(subLayerState);
          final newState = SubLayerState(oldState.showSideBoard, true);
          ref.read(subLayerState.notifier).update(newState);
        },
        child: Text(object.id),
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('シェアコンテンツ画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('シェアコンテンツ画面で一度だけ実行します');
      });
      return null;
    }, const []);

    final objects = ref.watch(mainBoardState).objects;

    return DragTarget(
      builder: (context, candidateData, rejectedData) {
        // ドロップ可能なエリア
        return Stack(
          fit: StackFit.expand,
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(color: Colors.green),
            ),
            for (var object in objects)
              Positioned(
                top: object.y,
                left: object.x,
                child: Draggable(
                  data: object,
                  child: objectView(object, ref),
                  feedback: objectView(object, ref),
                  childWhenDragging: const SizedBox(
                    width: 0,
                    height: 0,
                  ), // ドラッグ中に元の場所に表示するオブジェクト
                ),
              ),
          ],
        );
      },
      onAcceptWithDetails: (DragTargetDetails details) {
        // ドロップを受け取ったとき
        final object = details.data;
        if (object is MainBoardObject) {
          // オブジェクト一覧を更新
          // グローバル座標からローカル座標へ変換
          final RenderBox box = context.findRenderObject() as RenderBox;
          final localOffset = box.globalToLocal(details.offset);
          final updatedObject = MainBoardObject(
            object.id,
            localOffset.dx,
            localOffset.dy,
          );
          final updatedList = List.of(objects);
          updatedList.removeWhere((obj) => obj.id == object.id);
          updatedList.add(updatedObject);
          final updatedState = MainBoardState(updatedList);
          ref.read(mainBoardState.notifier).update(updatedState);
        }
      },
    );
  }
}

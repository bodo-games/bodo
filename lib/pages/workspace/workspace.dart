import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/pages/splash/splash_controller.dart';
import 'package:sample_app/pages/workspace/main_board_modal.dart';
import 'package:sample_app/pages/workspace/menu_bar.dart';
import 'package:sample_app/pages/workspace/my_hand_card_dock.dart';
import 'package:sample_app/pages/workspace/player_view.dart';
import 'package:sample_app/pages/workspace/side_board.dart';
import 'package:sample_app/pages/workspace/object_action_menu.dart';

class Workspace extends HookConsumerWidget {
  const Workspace();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('ワークスペース画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('ワークスペース画面で一度だけ実行します');
      });
    }, const []);

    return Scaffold(
      backgroundColor: const Color(0xFF555555),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // メインレイヤー
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // メニュー
              Container(
                width: double.infinity,
                height: 40,
                child: MenuBar(),
              ),
              Expanded(
                // シェアコンテンツ
                child: Container(
                  color: Colors.white12,
                  child: Row(
                    children: [
                      // 左のプレイヤーたち
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 120,
                            height: 80,
                            child: PlayerView(),
                          ),
                          Container(
                            width: 120,
                            height: 80,
                            child: PlayerView(),
                          ),
                        ],
                      ),
                      // メインボード
                      Expanded(
                        child: MainBoardModal(),
                      ),
                      // 右のプレイヤーたち
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 120,
                            height: 80,
                            child: PlayerView(),
                          ),
                          Container(
                            width: 120,
                            height: 80,
                            child: PlayerView(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // ドックエリア
              Container(
                height: 80,
                width: 400,
                child: MyHandCardDock(),
              ),
            ],
          ),
          // サブレイヤー
          Expanded(
            child: SideBoard(),
          ),
          Expanded(
            child: ObjectActionMenu(),
          ),
        ],
      ),
    );
  }
}

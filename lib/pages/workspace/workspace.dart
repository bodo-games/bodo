import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/pages/splash/splash_controller.dart';
import 'package:sample_app/pages/workspace/main_board_modal.dart';
import 'package:sample_app/pages/workspace/my_hand_card_dock.dart';

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
      body: Column(
        children: [
          Container(
            width: 600,
            height: 400,
            child: MainBoardModal(),
          ),
          MyHandCardDock(),
        ],
      ),
    );
  }
}

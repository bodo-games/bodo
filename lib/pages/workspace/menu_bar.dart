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

class MenuBar extends HookConsumerWidget {
  const MenuBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('シェアコンテンツ画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('シェアコンテンツ画面で一度だけ実行します');
      });
    }, const []);

    return Row(
      children: [
        TextButton(
          onPressed: () {
            final oldState = ref.read(sideBoardState);
            final newState = SideBoardState(true);
            final notifer = ref.read(sideBoardState.notifier);
            notifer.update(newState);
          },
          child: Text('SideBoard'),
        ),
      ],
    );
  }
}

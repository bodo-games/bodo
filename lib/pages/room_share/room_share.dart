import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/pages/splash/splash_controller.dart';

class RoomShare extends HookConsumerWidget {
  const RoomShare();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('ルーム共有画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('ルーム共有画面で一度だけ実行します');
      });
    }, const []);

    return Scaffold(
      backgroundColor: const Color(0xFF555555),
      body: Center(
        child: Column(
          children: [
            Text('bodo'),
            ElevatedButton(
              onPressed: () {
                ref.read(router).pushBaseNavi(PageId.workspace);
              },
              child: Text('クリップボードへまとめてコピー'),
            ),
          ],
        ),
      ),
    );
  }
}

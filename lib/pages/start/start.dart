import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/pages/splash/splash_controller.dart';

class Start extends HookConsumerWidget {
  const Start();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('スタート画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('スタート画面で一度だけ実行します');
      });
    }, const []);

    return Scaffold(
      backgroundColor: const Color(0xFF555555),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            // メニューバー
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.black54,
            ),
            // メインコンテンツ
            Container(
              width: double.infinity,
              height: 500,
              color: Colors.orange,
              child: Row(
                children: [
                  // 左側
                  Container(
                    width: 500,
                    height: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('bodo'),
                        Text('使い放題のオンラインボードゲームカフェ'),
                        ElevatedButton(
                          onPressed: () {
                            ref.read(router).pushBaseNavi(PageId.workspace);
                          },
                          child: Text('Start'),
                        ),
                      ],
                    ),
                  ),
                  // 右側
                  Container(
                    width: 300,
                    height: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset('images/top-image.png'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

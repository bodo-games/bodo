import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OtherHandCardDock extends HookConsumerWidget {
  const OtherHandCardDock();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('シェアコンテンツ画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('シェアコンテンツ画面で一度だけ実行します');
      });
      return null;
    }, const []);

    return Text('HandCard');
  }
}

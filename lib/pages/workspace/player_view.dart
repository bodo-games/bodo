import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PlayerView extends HookConsumerWidget {
  const PlayerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('シェアコンテンツ画面がビルドされました');
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('シェアコンテンツ画面で一度だけ実行します');
      });
      return null;
    }, const []);

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(color: Colors.white10),
      child: Row(
        children: [
          Text('アイコン'),
          Text('表示名'),
        ],
      ),
    );
  }
}

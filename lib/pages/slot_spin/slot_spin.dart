import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SlotSpin extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('スロット画面がビルドされました');
    return Text('SlotSpin');
  }
}

//
// アプリのテスト
//

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sample_app/main.dart';

void main() {
  testWidgets('テストを実施します', (WidgetTester tester) async {
    await tester.pumpWidget(SampleApp());
    debugPrint('テストが完了しました');
  });
}

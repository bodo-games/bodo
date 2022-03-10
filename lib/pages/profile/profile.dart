import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/components/chip_counter.dart';
import 'package:sample_app/components/simple_text.dart';
import 'package:sample_app/components/user_icon.dart';
import 'package:sample_app/pages/menu/menu.dart';
import 'package:sample_app/pages/profile/symbol_collection.dart';
import 'package:sample_app/state/user_crud.dart';

class Profile extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint('プロフィール画面がビルドされました');
    final account = ref.watch(userCrudState);
    final user = account.loginUser!;

    return Scaffold(
      // 画面背景色
      backgroundColor: Colors.white,
      // ヘッダー
      appBar: AppBar(
        // ヘッダー背景色
        backgroundColor: Colors.white,
        // ユーザー名
        title: SimpleText(
          user.nickname,
          size: 26,
          color: Colors.grey,
        ),
        iconTheme: const IconThemeData(color: Colors.grey),
        centerTitle: false,
      ),
      // メニュー
      endDrawer: Menu(),
      body: Column(
        children: [
          // ユーザーアイコン
          UserIcon(user.iconUrl, size: 120),
          // チップ枚数
          SizedBox(
            width: 300,
            height: 60,
            child: ChipCounter(user.chips),
          ),
          // シンボルコレクション
          SymbolCollection(),
        ],
      ),
    );
  }
}

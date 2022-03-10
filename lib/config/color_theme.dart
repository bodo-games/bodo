import 'package:flutter/material.dart';

ThemeData colorTheme() {
  final base = ThemeData.dark();
  return base.copyWith(
    backgroundColor: const Color(0xFF006400), // 背景色
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF006400)),
    bottomAppBarColor: const Color(0xFFFF0800), // フッターの色?
    canvasColor: const Color(0xFFFF0800), // タブバーの色
    cardColor: const Color(0xFFFF0800), // カードの色
    dialogBackgroundColor: Colors.black, // ダイアログの背景色
    disabledColor: Colors.grey, // 非活性の色
    dividerColor: Colors.white, // 区切り線の色
    errorColor: Colors.red, // エラーの色
    focusColor: Colors.white, // フォーカス色
    highlightColor: Colors.white, // ハイライトが当たった時の色
    hintColor: Colors.blue, // ヒントの文字などの色
    hoverColor: Colors.white, // ホバリング中の色
    indicatorColor: Colors.yellow, // インジケーターの色
    primaryColor: const Color(0xFF006400), // 基本カラー
    primaryColorDark: const Color(0xFF006400), // ダークモードの標準色
    primaryColorLight: const Color(0xFF006400), // ライトモードの標準色
    scaffoldBackgroundColor: Colors.white, // Scaffoldウィジェットの背景色
    secondaryHeaderColor: const Color(0xFFFF0800), // セカンドヘッダーの色
    selectedRowColor: Colors.white, // 選択された行の色
    shadowColor: Colors.black, // 影の色
    splashColor: const Color(0xFF006400), // スプラッシュの色
    toggleableActiveColor: Colors.white, // トグルできる場合のアクティブカラー
    unselectedWidgetColor: Colors.black, // 選択されていない時の色
  );
}

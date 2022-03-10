import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/components/symbol_counter.dart';
import 'package:sample_app/components/symbol_image.dart';
import 'package:sample_app/types/symbol_pocket.dart';

/// 集めたシンボル を入れておくための ポケット
class SymbolPocketView extends HookConsumerWidget {
  /// ポケットのデータモデル
  final SymbolPocket pocket;

  /// ポケットの色
  final Color color;

  /// ポケットの大きさ
  final double size;

  /// コンストラクタ
  const SymbolPocketView({
    required this.pocket,
    required this.color,
    required this.size,
  });

  // シンボル画像
  Widget symbolImage() {
    if (pocket.symbolId != null) {
      /* シンボルID がある場合 */
      // 専用のWidgetを返す
      return SymbolImage(pocket.symbolId!);
    } else {
      /* シンボルID がない場合 */
      // 空っぽを返す
      return Container();
    }
  }

  // シンボル数
  Widget symbolCounter() {
    if (pocket.symbolCount >= 2) {
      /* 2つ以上 持っている場合 */
      // 専用のWidgetを返す
      return SymbolCounter(pocket.symbolCount);
    } else {
      /* 1つ以下 の場合 */
      // 空っぽを返す
      return Container();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: size,
      height: size,
      color: color,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // 中央に シンボル画像
          Positioned(
            left: 12.0,
            top: 12.0,
            right: 12.0,
            bottom: 12.0,
            child: symbolImage(),
          ),
          // 右下に シンボル数
          Positioned(
            right: 6.0,
            bottom: 6.0,
            width: 20.0,
            height: 20.0,
            child: symbolCounter(),
          ),
        ],
      ),
    );
  }
}

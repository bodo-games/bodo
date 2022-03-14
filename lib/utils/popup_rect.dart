import 'package:sample_app/types/absolute_rect.dart';

/// ポップアップを表示する位置を計算する
/// anchor: クリックした場所など
AbsoluteRect popupRect(
  double anchorX,
  double anchorY,
  double width,
  double height,
  double parentWidth,
  double parentHeight,
) {
  // left を決める デフォルトは アンカーと同じ
  var left = anchorX;
  // 右側に十分な余白がないときは 左側に変更する
  if (parentWidth - left < width) {
    left -= width;
  }
  // 左側にも十分な余白がないときは anchor を無視して右に詰める
  if (left < 0) {
    left = parentWidth - width;
  }
  // top を決める デフォルトは アンカーと同じ
  var top = anchorY;
  // 下側に十分な余白がないときは 上側に変更する
  if (parentHeight - top < height) {
    top -= height;
  }
  // 上側にも十分な余白がないときは anchor を無視して下に詰める
  if (top < 0) {
    top = parentHeight - height;
  }
  return AbsoluteRect(
    top,
    left,
    width,
    height,
  );
}

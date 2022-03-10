import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';

/// 構造
class GamePageHostState {
  final GameId? pickedGameId;

  const GamePageHostState({
    required this.pickedGameId,
  });
}

/// バインド
class _Notifier extends StateNotifier<GamePageHostState> {
  _Notifier(GamePageHostState state) : super(state);
  update(GamePageHostState state) {
    this.state = state;
  }
}

/// 公開
final gamePageHostState =
    StateNotifierProvider<_Notifier, GamePageHostState>((ref) {
  // 初期化
  const initialState = GamePageHostState(
    pickedGameId: null,
  );
  return _Notifier(initialState);
});

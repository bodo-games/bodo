import 'package:riverpod/riverpod.dart';
import 'package:sample_app/types/loading_task.dart';

/// 構造
class LoadingState {
  final List<LoadingTask> tasks;

  const LoadingState({
    required this.tasks,
  });
}

/// バインド
class _Notifier extends StateNotifier<LoadingState> {
  _Notifier(LoadingState state) : super(state);
  update(LoadingState state) {
    this.state = state;
  }
}

/// 公開
final loadingState =
    StateNotifierProvider.autoDispose<_Notifier, LoadingState>((ref) {
  // 初期化
  const initialState = LoadingState(
    tasks: [],
  );
  return _Notifier(initialState);
});

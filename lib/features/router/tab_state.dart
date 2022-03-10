import 'package:riverpod/riverpod.dart';
import 'package:sample_app/features/router/page_id.dart';

class TabState {
  final PageId selectedId;

  const TabState({
    required this.selectedId,
  });
}

/// バインド
class Notifier extends StateNotifier<TabState> {
  Notifier(TabState state) : super(state);
  update(TabState state) {
    this.state = state;
  }
}

/// 公開
final homeTabState = StateNotifierProvider<Notifier, TabState>((ref) {
  // 初期化
  const initialState = TabState(
    selectedId: PageId.profile,
  );
  return Notifier(initialState);
});

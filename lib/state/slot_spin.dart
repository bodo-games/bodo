import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';
import 'package:sample_app/types/machine.dart';

/// 構造
class SlotSpinState {
  final List<Machine> machines;

  const SlotSpinState({
    required this.machines,
  });
}

/// バインド
class _Notifier extends StateNotifier<SlotSpinState> {
  _Notifier(SlotSpinState state) : super(state);
  update(SlotSpinState state) {
    this.state = state;
  }
}

/// 公開
final slotSpinState =
    StateNotifierProvider.autoDispose<_Notifier, SlotSpinState>((ref) {
  // 初期化
  const initialState = SlotSpinState(
    machines: [],
  );
  return _Notifier(initialState);
});

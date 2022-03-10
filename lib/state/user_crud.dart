import 'package:casino_plus/casino_plus.dart';
import 'package:riverpod/riverpod.dart';
import 'package:sample_app/types/user.dart';

/// 構造
class UserCrudState {
  final User? loginUser;
  final List<String> logoutUserIds;

  const UserCrudState({
    required this.loginUser,
    required this.logoutUserIds,
  });
}

/// バインド
class Notifier extends StateNotifier<UserCrudState> {
  Notifier(UserCrudState state) : super(state);
  update(UserCrudState state) {
    this.state = state;
  }
}

/// 公開
final userCrudState = StateNotifierProvider<Notifier, UserCrudState>((ref) {
  // 初期化
  const initialState = UserCrudState(
    loginUser: null,
    logoutUserIds: [],
  );

  return Notifier(initialState);
});

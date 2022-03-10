//
//
//

import 'package:riverpod/riverpod.dart';
import 'package:sample_app/state/user_crud.dart';
import 'package:sample_app/types/symbol_id.dart';
import 'package:sample_app/types/symbol_pocket.dart';
import 'package:sample_app/types/user.dart';
import 'package:uuid/uuid.dart';

class UserCreater {
  final Reader _read;
  UserCreater(this._read);

  createUser() async {
    final newUserId = const Uuid().v4().toString();
    final newUser = User(
      id: newUserId,
      mail: 'test@sample.com',
      nickname: 'ゲスト太郎',
      iconUrl: 'assets://icon-guest.png',
      chips: 500,
      symbolPockets: [
        SymbolPocket(symbolId: SymbolId.beer, symbolCount: 5),
      ],
      selfIntro: 'こんにちは',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    final oldState = _read(userCrudState);
    final newState = UserCrudState(
        loginUser: newUser, logoutUserIds: oldState.logoutUserIds);
    _read(userCrudState.notifier).update(newState);
  }
}

final userCreater = Provider.autoDispose((ref) => UserCreater(ref.read));

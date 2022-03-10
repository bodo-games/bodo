//
//
//

import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/features/user_crud/user_creater.dart';

class Controller {
  final Reader _read;
  Controller(this._read);

  onSplashAppear() async {
    _read(userCreater).createUser();

    // 2秒まつ
    await Future.delayed(const Duration(seconds: 2));

    debugPrint('スプラッシュ画面から移動します');
    _read(router).setBaseNavi([PageId.home]);
  }
}

final splashController = Provider.autoDispose((ref) => Controller(ref.read));

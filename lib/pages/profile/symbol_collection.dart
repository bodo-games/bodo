import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/pages/profile/symbol_pocket.dart';
import 'package:sample_app/state/user_crud.dart';

class SymbolCollection extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pockets = ref.watch(userCrudState).loginUser!.symbolPockets;

    return Row(
      children: [
        for (var pocket in pockets)
          SymbolPocketView(
            pocket: pocket,
            color: Colors.red,
            size: 70,
          ),
      ],
    );
  }
}

import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/state/slot_spin.dart';
import 'package:sample_app/types/machine.dart';

class SlotList extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final machines = ref.watch(slotSpinState).machines;
    return Scaffold(
      body: Column(
        children: [
          for (var machine in machines)
            item(machine, () {
              ref.read(router).pushBaseNavi(PageId.slotSpin);
            }),
        ],
      ),
    );
  }

  Widget item(Machine machine, void Function() onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(machine.name),
    );
  }
}

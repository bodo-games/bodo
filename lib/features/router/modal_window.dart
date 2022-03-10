import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/modal_state.dart';

class ModalWindow extends HookConsumerWidget {
  final ModalState state;
  const ModalWindow({
    required this.state,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text('ここにModalが表示されます');
  }
}

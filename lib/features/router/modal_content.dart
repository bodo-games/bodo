//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/modal_id.dart';
import 'package:sample_app/modals/bad_network.dart';
import 'package:sample_app/modals/old_app_version.dart';

class ModalContent extends HookConsumerWidget {
  final ModalId id;
  const ModalContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      case ModalId.badNetwork:
        return BadNetwork();
      case ModalId.oldVersion:
        return OldAppVersion();
    }
  }
}

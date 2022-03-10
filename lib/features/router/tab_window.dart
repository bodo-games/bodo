//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/page_content.dart';
import 'package:sample_app/features/router/tab_state.dart';

class TabWindow extends HookConsumerWidget {
  final TabState state;
  const TabWindow(this.state);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PageContent(id: state.selectedId),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/tab_state.dart';
import 'package:sample_app/features/router/tab_window.dart';
import 'package:sample_app/pages/home/config.dart';
import 'package:sample_app/pages/home/tab_bar.dart';

class Home extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeTabState);

    return Scaffold(
      body: TabWindow(state),
      bottomNavigationBar: HomeTabBar(state: state, config: homeTabConfig),
    );
  }
}

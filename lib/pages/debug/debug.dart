//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/pages/menu/menu_items.dart';

class Debug extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = menuItems.firstWhere((item) => item.pageId == PageId.debug);
    return Scaffold(
      backgroundColor: const Color(0xFF006400),
      appBar: AppBar(title: Text(item.title)),
      body: Text('Debug'),
    );
  }
}

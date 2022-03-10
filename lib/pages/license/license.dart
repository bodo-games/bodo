//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/pages/menu/menu_items.dart';

class License extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = menuItems.firstWhere((item) => item.pageId == PageId.license);
    return Scaffold(
      backgroundColor: const Color(0xFF006400),
      appBar: AppBar(title: Text(item.title)),
      body: Text('License'),
    );
  }
}

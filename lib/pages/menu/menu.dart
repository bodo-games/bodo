import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/components/doc_text.dart';
import 'package:sample_app/features/router/router.dart';
import 'package:sample_app/pages/menu/menu_items.dart';
import 'package:sample_app/types/menu_item.dart';

class Menu extends HookConsumerWidget {
  /// Item to ListTile
  ListTile tile(MenuItem item, {required void Function() onTap}) {
    return ListTile(title: Text(item.title), onTap: onTap);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: Container(
        color: const Color(0xFF006400),
        child: ListView(children: [
          Container(
            height: 200.0,
            color: const Color(0xFF006400),
            child: const DrawerHeader(
              child: DocText('Casino+', size: 30),
            ),
          ),
          for (var item in menuItems)
            tile(item, onTap: () {
              ref.read(router).pushBaseNavi(item.pageId);
            })
        ]),
      ),
    );
  }
}

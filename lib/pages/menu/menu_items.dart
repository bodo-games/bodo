//
//
//

import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/types/menu_item.dart';

final List<MenuItem> menuItems = [
  MenuItem(
    title: '開発者より',
    pageId: PageId.developerMessage,
  ),
  MenuItem(
    title: 'ライセンス',
    pageId: PageId.license,
  ),
  MenuItem(
    title: '利用規約',
    pageId: PageId.termsOfService,
  ),
  MenuItem(
    title: 'Debug',
    pageId: PageId.debug,
  ),
];

//
//
//

import 'package:flutter/material.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/features/router/tab_config.dart';

final homeTabConfig = TabConfig(
  pageList: [
    PageId.profile,
    PageId.gameList,
    PageId.slotList,
  ],
  backColor: Colors.red,
  frontColorOnSelected: Colors.white,
  frontColorOnUnselected: Colors.black,
  imageUrls: {
    PageId.profile: 'fluttericons://' + Icons.person.codePoint.toString(),
    PageId.gameList:
        'fluttericons://' + Icons.play_arrow_rounded.codePoint.toString(),
    PageId.slotList: 'fluttericons://' + Icons.person.codePoint.toString(),
  },
  labeltexts: {
    PageId.profile: 'Profile',
    PageId.gameList: 'Game',
    PageId.slotList: 'Slot',
  },
);

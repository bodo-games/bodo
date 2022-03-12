//
//
//

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sample_app/features/router/page_id.dart';
import 'package:sample_app/pages/debug/debug.dart';
import 'package:sample_app/pages/developer_message/developer_message.dart';
import 'package:sample_app/pages/game_list/game_list.dart';
import 'package:sample_app/pages/home/home.dart';
import 'package:sample_app/pages/license/license.dart';
import 'package:sample_app/pages/onboarding/onboarding.dart';
import 'package:sample_app/pages/profile/profile.dart';
import 'package:sample_app/pages/receive_drink/receive_drink.dart';
import 'package:sample_app/pages/roll_dice/roll_dice.dart';
import 'package:sample_app/pages/room_create/room_create.dart';
import 'package:sample_app/pages/room_share/room_share.dart';
import 'package:sample_app/pages/slot_list/slot_list.dart';
import 'package:sample_app/pages/slot_spin/slot_spin.dart';
import 'package:sample_app/pages/splash/splash.dart';
import 'package:sample_app/pages/start/start.dart';
import 'package:sample_app/pages/terms_of_service/terms_of_service.dart';
import 'package:sample_app/pages/workspace/workspace.dart';

class PageContent extends HookConsumerWidget {
  final PageId id;
  const PageContent({
    required this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    switch (id) {
      case PageId.start:
        return Start();
      case PageId.splash:
        return const Splash();
      case PageId.onboarding:
        return Onboarding();
      case PageId.rollDice:
        return RollDice();
      case PageId.receiveDrink:
        return ReceiveDrink();
      case PageId.home:
        return Home();
      case PageId.profile:
        return Profile();
      case PageId.gameList:
        return GameList();
      case PageId.slotList:
        return SlotList();
      case PageId.slotSpin:
        return SlotSpin();
      case PageId.developerMessage:
        return DeveloperMessage();
      case PageId.license:
        return License();
      case PageId.termsOfService:
        return TermsOfService();
      case PageId.debug:
        return Debug();
      case PageId.roomCreate:
        return RoomCreate();
      case PageId.roomShare:
        return RoomShare();
      case PageId.workspace:
        return Workspace();
    }
  }
}

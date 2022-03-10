import 'package:casino_plus/casino_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:sample_app/components/doc_text.dart';
import 'package:sample_app/components/price_ribbon.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/components/url_image.dart';

class _ParentApp {
  static void Function(GameId id)? onPickedGame;
}

// 最初に表示するゲームのIndex
const int initialIndex = 0;

class GamePicker extends HookConsumerWidget {
  final void Function(GameId id) onPickedGame;
  GamePicker({
    required this.onPickedGame,
  }) {
    _ParentApp.onPickedGame = onPickedGame;
  }

  final options = CarouselOptions(
    height: 400,
    aspectRatio: 16 / 9,
    viewportFraction: 0.8,
    initialPage: initialIndex,
    enableInfiniteScroll: false,
    reverse: false,
    autoPlay: false,
    autoPlayInterval: const Duration(seconds: 3),
    autoPlayAnimationDuration: const Duration(milliseconds: 800),
    autoPlayCurve: Curves.fastOutSlowIn,
    enlargeCenterPage: true,
    scrollDirection: Axis.horizontal,
    onPageChanged: (index, reason) {
      _ParentApp.onPickedGame?.call(getGames()[index].id);
    },
  );

  Widget item(Game game) {
    print(game.imageUrl);
    return Column(
      children: [
        DocText(game.title),
        PriceRibbon(price: game.playCost),
        SizedBox(
          width: 200,
          height: 200,
          child: GameImage(GameId.cakepoker),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      WidgetsBinding.instance?.addPostFrameCallback((_) {
        debugPrint('Game Pickerが表示されました');
        _ParentApp.onPickedGame?.call(getGames()[initialIndex].id);
      });
    }, const []);
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xFF006400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: CarouselSlider(
        options: options,
        items: getGames().map((game) {
          return Builder(
            builder: (BuildContext context) {
              return item(game);
            },
          );
        }).toList(),
      ),
    );
  }
}

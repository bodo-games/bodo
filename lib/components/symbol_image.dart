import 'package:flutter/material.dart';
import 'package:sample_app/components/gradient_mask.dart';
import 'package:sample_app/components/url_image.dart';
import 'package:sample_app/config/gradient_colors.dart';
import 'package:sample_app/config/image_names.dart';
import 'package:sample_app/types/symbol_id.dart';

class SymbolImage extends StatelessWidget {
  final SymbolId symbolId;
  const SymbolImage(this.symbolId);
  @override
  Widget build(BuildContext context) {
    final imgName = _imageName(symbolId);
    return GradientMask(
      colors: goldColors,
      child: UrlImage.assetsName(imgName),
    );
  }
}

String _imageName(SymbolId id) {
  switch (id) {
    case SymbolId.champagne:
      return ImageNames.symbolChampagne;
    case SymbolId.beer:
      return ImageNames.symbolBeer;
    case SymbolId.brandy:
      return ImageNames.symbolBrandy;
    case SymbolId.cocktail:
      return ImageNames.symbolCocktail;
    case SymbolId.liqueur:
      return ImageNames.symbolLiqueur;
    case SymbolId.spirits:
      return ImageNames.symbolSpirits;
    case SymbolId.wine:
      return ImageNames.symbolWine;
    case SymbolId.bell:
      return ImageNames.symbolBell;
    case SymbolId.cherry:
      return ImageNames.symbolCherry;
    case SymbolId.clover:
      return ImageNames.symbolClover;
    case SymbolId.horseshoe:
      return ImageNames.symbolHorseshoe;
    case SymbolId.luckySeven:
      return ImageNames.symbolLuckySeven;
    case SymbolId.chip0:
      return ImageNames.symbolChip0;
    case SymbolId.chip1:
      return ImageNames.symbolChampagne;
    case SymbolId.chip2:
      return ImageNames.symbolChampagne;
    case SymbolId.chip3:
      return ImageNames.symbolChampagne;
    case SymbolId.chip10:
      return ImageNames.symbolChampagne;
    case SymbolId.plClag:
      return ImageNames.symbolChampagne;
    case SymbolId.plCPlusPlus:
      return ImageNames.symbolChampagne;
    case SymbolId.plCSharp:
      return ImageNames.symbolChampagne;
    case SymbolId.plDart:
      return ImageNames.symbolChampagne;
    case SymbolId.plGolang:
      return ImageNames.symbolChampagne;
    case SymbolId.plJava:
      return ImageNames.symbolChampagne;
    case SymbolId.plJavaScript:
      return ImageNames.symbolChampagne;
    case SymbolId.plKotlin:
      return ImageNames.symbolChampagne;
    case SymbolId.plPHP:
      return ImageNames.symbolChampagne;
    case SymbolId.plPython:
      return ImageNames.symbolChampagne;
    case SymbolId.plRuby:
      return ImageNames.symbolChampagne;
    case SymbolId.plSwift:
      return ImageNames.symbolChampagne;
    case SymbolId.plTypeScript:
      return ImageNames.symbolChampagne;
    case SymbolId.appIcon:
      return ImageNames.symbolChampagne;
    case SymbolId.spade:
      return ImageNames.symbolChampagne;
    case SymbolId.heart:
      return ImageNames.symbolChampagne;
    case SymbolId.diamond:
      return ImageNames.symbolChampagne;
    case SymbolId.club:
      return ImageNames.symbolChampagne;
    case SymbolId.open:
      return ImageNames.symbolChampagne;
    case SymbolId.v1:
      return ImageNames.symbolChampagne;
  }
}

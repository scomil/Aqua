import 'package:flutter/material.dart';

class AquaColors {
  /// Outlined buttons, icons and texts
  /// 19, 205, 194
  /// #13CDC2
  static const MaterialColor topaz = robinEggBlue;
  static const MaterialColor robinEggBlue = MaterialColor(
    _robinEggBluePrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(19, 205, 194, .1),
      100: Color.fromRGBO(19, 205, 194, .2),
      200: Color.fromRGBO(19, 205, 194, .3),
      300: Color.fromRGBO(19, 205, 194, .4),
      400: Color.fromRGBO(19, 205, 194, .5),
      500: Color(_robinEggBluePrimaryValue),
      600: Color.fromRGBO(19, 205, 194, .7),
      700: Color.fromRGBO(19, 205, 194, .8),
      800: Color.fromRGBO(19, 205, 194, .9),
      900: Color.fromRGBO(19, 205, 194, 1),
    },
  );
  static const int _robinEggBluePrimaryValue = 0xFF13CDC2;

  /// Background color
  /// 13, 19, 35
  /// #0d1323
  static const MaterialColor onyx = MaterialColor(
    _onyxPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(13, 19, 35, .1),
      100: Color.fromRGBO(13, 19, 35, .2),
      200: Color.fromRGBO(13, 19, 35, .3),
      300: Color.fromRGBO(13, 19, 35, .4),
      400: Color.fromRGBO(13, 19, 35, .5),
      500: Color(_onyxPrimaryValue),
      600: Color.fromRGBO(13, 19, 35, .7),
      700: Color.fromRGBO(13, 19, 35, .8),
      800: Color.fromRGBO(13, 19, 35, .9),
      900: Color.fromRGBO(13, 19, 35, 1),
    },
  );
  static const int _onyxPrimaryValue = 0xFF0d1323;

  /// Asset bg, Input fields
  /// 20,29,49
  /// #141D31
  static const MaterialColor darkJungleGreen = MaterialColor(
    _darkJungleGreenPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(20, 29, 49, .1),
      100: Color.fromRGBO(20, 29, 49, .2),
      200: Color.fromRGBO(20, 29, 49, .3),
      300: Color.fromRGBO(20, 29, 49, .4),
      400: Color.fromRGBO(20, 29, 49, .5),
      500: Color(_darkJungleGreenPrimaryValue),
      600: Color.fromRGBO(20, 29, 49, .7),
      700: Color.fromRGBO(20, 29, 49, .8),
      800: Color.fromRGBO(20, 29, 49, .9),
      900: Color.fromRGBO(20, 29, 49, 1),
    },
  );
  static const int _darkJungleGreenPrimaryValue = 0xFF141D31;

  /// Unselect buttons, pop-ups
  /// 27,37,64
  /// #1B2540
  static const MaterialColor mediumJungleGreen = MaterialColor(
    _mediumJungleGreenPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(27, 37, 64, .1),
      100: Color.fromRGBO(27, 37, 64, .2),
      200: Color.fromRGBO(27, 37, 64, .3),
      300: Color.fromRGBO(27, 37, 64, .4),
      400: Color.fromRGBO(27, 37, 64, .5),
      500: Color(_mediumJungleGreenPrimaryValue),
      600: Color.fromRGBO(27, 37, 64, .7),
      700: Color.fromRGBO(27, 37, 64, .8),
      800: Color.fromRGBO(27, 37, 64, .9),
      900: Color.fromRGBO(27, 37, 64, 1),
    },
  );
  static const int _mediumJungleGreenPrimaryValue = 0xFF1B2540;

  /// Filled buttons, card backgrounds
  /// 44,60,93
  /// #2C3C5D
  static const MaterialColor charcoal = MaterialColor(
    _charcoalPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(44, 60, 93, .1),
      100: Color.fromRGBO(44, 60, 93, .2),
      200: Color.fromRGBO(44, 60, 93, .3),
      300: Color.fromRGBO(44, 60, 93, .4),
      400: Color.fromRGBO(44, 60, 93, .5),
      500: Color(_charcoalPrimaryValue),
      600: Color.fromRGBO(44, 60, 93, .7),
      700: Color.fromRGBO(44, 60, 93, .8),
      800: Color.fromRGBO(44, 60, 93, .9),
      900: Color.fromRGBO(44, 60, 93, 1),
    },
  );
  static const int _charcoalPrimaryValue = 0xFF2C3C5D;

  /// Text color on Onyx bg
  /// 234,234,235
  /// #EAEAEB
  static const MaterialColor isabelline = MaterialColor(
    _isabellinePrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(234, 234, 235, .1),
      100: Color.fromRGBO(234, 234, 235, .2),
      200: Color.fromRGBO(234, 234, 235, .3),
      300: Color.fromRGBO(234, 234, 235, .4),
      400: Color.fromRGBO(234, 234, 235, .5),
      500: Color(_isabellinePrimaryValue),
      600: Color.fromRGBO(234, 234, 235, .7),
      700: Color.fromRGBO(234, 234, 235, .8),
      800: Color.fromRGBO(234, 234, 235, .9),
      900: Color.fromRGBO(234, 234, 235, 1),
    },
  );
  static const int _isabellinePrimaryValue = 0xFFEAEAEB;

  /// Text color on Charcoal bg
  /// 142,154,181
  /// #8E9AB5
  static const MaterialColor cadetGrey = MaterialColor(
    _cadetGreyPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(142, 154, 181, .1),
      100: Color.fromRGBO(142, 154, 181, .2),
      200: Color.fromRGBO(142, 154, 181, .3),
      300: Color.fromRGBO(142, 154, 181, .4),
      400: Color.fromRGBO(142, 154, 181, .5),
      500: Color(_cadetGreyPrimaryValue),
      600: Color.fromRGBO(142, 154, 181, .7),
      700: Color.fromRGBO(142, 154, 181, .8),
      800: Color.fromRGBO(142, 154, 181, .9),
      900: Color.fromRGBO(142, 154, 181, 1),
    },
  );
  static const int _cadetGreyPrimaryValue = 0xFF8E9AB5;

  /// Text color on Onyx bg
  /// 107,115,135
  /// #6B7387
  static const MaterialColor auroMetalSaurus = MaterialColor(
    _auroMetalSaurusPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(107, 115, 135, .1),
      100: Color.fromRGBO(107, 115, 135, .2),
      200: Color.fromRGBO(107, 115, 135, .3),
      300: Color.fromRGBO(107, 115, 135, .4),
      400: Color.fromRGBO(107, 115, 135, .5),
      500: Color(_auroMetalSaurusPrimaryValue),
      600: Color.fromRGBO(107, 115, 135, .7),
      700: Color.fromRGBO(107, 115, 135, .8),
      800: Color.fromRGBO(107, 115, 135, .9),
      900: Color.fromRGBO(107, 115, 135, 1),
    },
  );
  static const int _auroMetalSaurusPrimaryValue = 0xFF6B7387;

  /// Filled buttons and switches
  /// 5,152,154
  /// #05989A
  static const MaterialColor persianGreen = MaterialColor(
    _persianGreenPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(5, 152, 154, .1),
      100: Color.fromRGBO(5, 152, 154, .2),
      200: Color.fromRGBO(5, 152, 154, .3),
      300: Color.fromRGBO(5, 152, 154, .4),
      400: Color.fromRGBO(5, 152, 154, .5),
      500: Color(_persianGreenPrimaryValue),
      600: Color.fromRGBO(5, 152, 154, .7),
      700: Color.fromRGBO(5, 152, 154, .8),
      800: Color.fromRGBO(5, 152, 154, .9),
      900: Color.fromRGBO(5, 152, 154, 1),
    },
  );
  static const int _persianGreenPrimaryValue = 0xFF05989A;

  /// Icon color
  /// 255,34,104
  /// #FF2268
  static const MaterialColor radicalRed = MaterialColor(
    _radicalRedPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(255, 34, 104, .1),
      100: Color.fromRGBO(255, 34, 104, .2),
      200: Color.fromRGBO(255, 34, 104, .3),
      300: Color.fromRGBO(255, 34, 104, .4),
      400: Color.fromRGBO(255, 34, 104, .5),
      500: Color(_radicalRedPrimaryValue),
      600: Color.fromRGBO(255, 34, 104, .7),
      700: Color.fromRGBO(255, 34, 104, .8),
      800: Color.fromRGBO(255, 34, 104, .9),
      900: Color.fromRGBO(255, 34, 104, 1),
    },
  );
  static const int _radicalRedPrimaryValue = 0xFFFF2268;

  static final Color onyxDropShadow = onyx.withOpacity(0.7);
}

class SideshiftColors {
  /// 77, 57, 57
  /// #4D3939
  static const MaterialColor darkPuce = MaterialColor(
    _darkPucePrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(77, 57, 57, .1),
      100: Color.fromRGBO(77, 57, 57, .2),
      200: Color.fromRGBO(77, 57, 57, .3),
      300: Color.fromRGBO(77, 57, 57, .4),
      400: Color.fromRGBO(77, 57, 57, .5),
      500: Color(_darkPucePrimaryValue),
      600: Color.fromRGBO(77, 57, 57, .7),
      700: Color.fromRGBO(77, 57, 57, .8),
      800: Color.fromRGBO(77, 57, 57, .9),
      900: Color.fromRGBO(77, 57, 57, 1),
    },
  );
  static const int _darkPucePrimaryValue = 0xFF4D3939;

  /// 107, 79, 79
  /// #6B4F4F
  static const MaterialColor wenge = MaterialColor(
    _wengePrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(107, 79, 79, .1),
      100: Color.fromRGBO(107, 79, 79, .2),
      200: Color.fromRGBO(107, 79, 79, .3),
      300: Color.fromRGBO(107, 79, 79, .4),
      400: Color.fromRGBO(107, 79, 79, .5),
      500: Color(_wengePrimaryValue),
      600: Color.fromRGBO(107, 79, 79, .7),
      700: Color.fromRGBO(107, 79, 79, .8),
      800: Color.fromRGBO(107, 79, 79, .9),
      900: Color.fromRGBO(107, 79, 79, 1),
    },
  );
  static const int _wengePrimaryValue = 0xFF6B4F4F;

  /// 26, 17, 17
  /// #1A1111
  static const MaterialColor licorice = MaterialColor(
    _licoricePrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(26, 17, 17, .1),
      100: Color.fromRGBO(26, 17, 17, .2),
      200: Color.fromRGBO(26, 17, 17, .3),
      300: Color.fromRGBO(26, 17, 17, .4),
      400: Color.fromRGBO(26, 17, 17, .5),
      500: Color(_licoricePrimaryValue),
      600: Color.fromRGBO(26, 17, 17, .7),
      700: Color.fromRGBO(26, 17, 17, .8),
      800: Color.fromRGBO(26, 17, 17, .9),
      900: Color.fromRGBO(26, 17, 17, 1),
    },
  );
  static const int _licoricePrimaryValue = 0xFF1A1111;

  /// 39, 26, 26
  /// #271A1A
  static const MaterialColor eerieBlack = MaterialColor(
    _eerieBlackPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(39, 26, 26, .1),
      100: Color.fromRGBO(39, 26, 26, .2),
      200: Color.fromRGBO(39, 26, 26, .3),
      300: Color.fromRGBO(39, 26, 26, .4),
      400: Color.fromRGBO(39, 26, 26, .5),
      500: Color(_eerieBlackPrimaryValue),
      600: Color.fromRGBO(39, 26, 26, .7),
      700: Color.fromRGBO(39, 26, 26, .8),
      800: Color.fromRGBO(39, 26, 26, .9),
      900: Color.fromRGBO(39, 26, 26, 1),
    },
  );
  static const int _eerieBlackPrimaryValue = 0xFF271A1A;

  /// 253, 73, 57
  /// #FD4939
  static const MaterialColor ogreOdor = MaterialColor(
    _ogreOdorPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(253, 73, 57, .1),
      100: Color.fromRGBO(253, 73, 57, .2),
      200: Color.fromRGBO(253, 73, 57, .3),
      300: Color.fromRGBO(253, 73, 57, .4),
      400: Color.fromRGBO(253, 73, 57, .5),
      500: Color(_ogreOdorPrimaryValue),
      600: Color.fromRGBO(253, 73, 57, .7),
      700: Color.fromRGBO(253, 73, 57, .8),
      800: Color.fromRGBO(253, 73, 57, .9),
      900: Color.fromRGBO(253, 73, 57, 1),
    },
  );
  static const int _ogreOdorPrimaryValue = 0xFFFD4939;

  /// 51, 51, 51
  /// #333333
  static const MaterialColor darkCharcoal = MaterialColor(
    _darkCharcoalPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(51, 51, 51, .1),
      100: Color.fromRGBO(51, 51, 51, .2),
      200: Color.fromRGBO(51, 51, 51, .3),
      300: Color.fromRGBO(51, 51, 51, .4),
      400: Color.fromRGBO(51, 51, 51, .5),
      500: Color(_darkCharcoalPrimaryValue),
      600: Color.fromRGBO(51, 51, 51, .7),
      700: Color.fromRGBO(51, 51, 51, .8),
      800: Color.fromRGBO(51, 51, 51, .9),
      900: Color.fromRGBO(51, 51, 51, 1),
    },
  );
  static const int _darkCharcoalPrimaryValue = 0xFF333333;

  /// 174, 135, 135
  /// #AE8787
  static const MaterialColor englishLavender = MaterialColor(
    _englishLavenderPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(174, 135, 135, .1),
      100: Color.fromRGBO(174, 135, 135, .2),
      200: Color.fromRGBO(174, 135, 135, .3),
      300: Color.fromRGBO(174, 135, 135, .4),
      400: Color.fromRGBO(174, 135, 135, .5),
      500: Color(_englishLavenderPrimaryValue),
      600: Color.fromRGBO(174, 135, 135, .7),
      700: Color.fromRGBO(174, 135, 135, .8),
      800: Color.fromRGBO(174, 135, 135, .9),
      900: Color.fromRGBO(174, 135, 135, 1),
    },
  );
  static const int _englishLavenderPrimaryValue = 0xFFAE8787;

  /// 136, 136, 136
  /// #888888
  static const MaterialColor taupeGray = MaterialColor(
    _taupeGrayPrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(136, 136, 136, .1),
      100: Color.fromRGBO(136, 136, 136, .2),
      200: Color.fromRGBO(136, 136, 136, .3),
      300: Color.fromRGBO(136, 136, 136, .4),
      400: Color.fromRGBO(136, 136, 136, .5),
      500: Color(_taupeGrayPrimaryValue),
      600: Color.fromRGBO(136, 136, 136, .7),
      700: Color.fromRGBO(136, 136, 136, .8),
      800: Color.fromRGBO(136, 136, 136, .9),
      900: Color.fromRGBO(136, 136, 136, 1),
    },
  );
  static const int _taupeGrayPrimaryValue = 0xFF888888;

  /// 56, 41, 41
  /// #382929
  static const MaterialColor blackCoffee = MaterialColor(
    _blackCoffeePrimaryValue,
    <int, Color>{
      50: Color.fromRGBO(56, 41, 41, .1),
      100: Color.fromRGBO(56, 41, 41, .2),
      200: Color.fromRGBO(56, 41, 41, .3),
      300: Color.fromRGBO(56, 41, 41, .4),
      400: Color.fromRGBO(56, 41, 41, .5),
      500: Color(_blackCoffeePrimaryValue),
      600: Color.fromRGBO(56, 41, 41, .7),
      700: Color.fromRGBO(56, 41, 41, .8),
      800: Color.fromRGBO(56, 41, 41, .9),
      900: Color.fromRGBO(56, 41, 41, 1),
    },
  );
  static const int _blackCoffeePrimaryValue = 0xFF382929;
}

import 'package:flutter/material.dart';
class Palette {
  static const MaterialColor SteelBlue = const MaterialColor(
    0xff2a4e6c, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xff4682b4),//10%
      100: const Color(0xff3f75a2),//20%
      200: const Color(0xff386890),//30%
      300: const Color(0xff315b7e),//40%
      400: const Color(0xff2a4e6c),//50%
      500: const Color(0xff23415a),//60%
      600: const Color(0xff1c3448),//70%
      700: const Color(0xff152736),//80%
      800: const Color(0xff0e1a24),//90%
      900: const Color(0xff070d12),//100%
    },
  );
}
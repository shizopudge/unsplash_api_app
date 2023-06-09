import 'package:flutter/material.dart';

class AppColors {
  static final Shader linearGradientPink = const LinearGradient(
    colors: <Color>[
      Color(0xffDA44bb),
      Color(0xff8921aa),
    ],
  ).createShader(
    const Rect.fromLTWH(
      0.0,
      0.0,
      200.0,
      70.0,
    ),
  );

  static final Shader linearGradientRed = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 173, 29, 53),
      Color.fromARGB(255, 27, 95, 173),
    ],
  ).createShader(
    const Rect.fromLTWH(
      0.0,
      0.0,
      200.0,
      70.0,
    ),
  );

  static final Shader linearGradientOrange = const LinearGradient(
    colors: <Color>[
      Color.fromARGB(255, 103, 17, 129),
      Color.fromARGB(255, 4, 65, 134),
      Color.fromARGB(255, 153, 71, 4),
    ],
  ).createShader(
    const Rect.fromLTWH(
      0.0,
      0.0,
      200.0,
      70.0,
    ),
  );

  static const LinearGradient linearGradientBlue = LinearGradient(
    colors: [
      Color.fromARGB(255, 112, 20, 173),
      Color.fromARGB(255, 49, 73, 207),
    ],
  );

  static const LinearGradient silverPlaceholderGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 107, 129, 158),
      Color.fromARGB(255, 87, 95, 105),
    ],
  );
}

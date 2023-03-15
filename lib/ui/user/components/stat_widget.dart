import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../core/fonts.dart';

class StatWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const StatWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 40,
          ),
          AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts: [
              TyperAnimatedText(
                text,
                textStyle: AppFonts.smallStyle.copyWith(
                  letterSpacing: 1.2,
                ),
                textAlign: TextAlign.center,
                speed: const Duration(milliseconds: 100),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

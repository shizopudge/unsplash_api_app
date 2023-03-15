import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../core/fonts.dart';

class SocialWidget extends StatelessWidget {
  final String imagePath;
  final Color imageColor;
  final String text;
  const SocialWidget({
    super.key,
    required this.imagePath,
    required this.imageColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(imagePath),
                colorFilter: ColorFilter.mode(
                  imageColor,
                  BlendMode.srcIn,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          AnimatedTextKit(
            isRepeatingAnimation: false,
            animatedTexts: [
              TyperAnimatedText(
                text,
                textStyle: AppFonts.smallStyle,
                textAlign: TextAlign.center,
                speed: const Duration(milliseconds: 110),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

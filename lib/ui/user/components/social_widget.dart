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
    return Column(
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
        Text(
          text,
          style: AppFonts.defaultStyle.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
          ),
        ),
      ],
    );
  }
}

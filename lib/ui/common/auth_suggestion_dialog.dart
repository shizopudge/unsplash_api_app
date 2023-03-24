import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';

class AuthSuggestionDialog extends StatelessWidget {
  const AuthSuggestionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(21),
      ),
      titlePadding: const EdgeInsets.only(top: 10),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 10,
      ),
      elevation: 8,
      children: [
        Align(
          alignment: Alignment.topRight,
          child: InkWell(
            onTap: () => context.pop(),
            borderRadius: BorderRadius.circular(21),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ShaderMask(
                shaderCallback: (Rect bounds) => AppColors.linearGradientRed,
                blendMode: BlendMode.srcIn,
                child: const Icon(
                  Icons.close,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'You are not authorized',
            textAlign: TextAlign.center,
            style: AppFonts.titleStyle.copyWith(
              foreground: Paint()..shader = AppColors.linearGradientRed,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedTextKit(
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              TyperAnimatedText(
                'To access all the functionality you need to log in.',
                textStyle: AppFonts.defaultStyle.copyWith(
                  foreground: Paint()..shader = AppColors.linearGradientRed,
                ),
                textAlign: TextAlign.center,
                //?
                speed: const Duration(milliseconds: 25),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () => context.go('/'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              backgroundColor: Colors.grey.shade100,
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 8,
              ),
              minimumSize: const Size(
                double.infinity,
                50,
              ),
              elevation: 4,
            ),
            child: Text(
              'Login / Sign up',
              style: AppFonts.defaultStyle.copyWith(
                foreground: Paint()..shader = AppColors.linearGradientPink,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

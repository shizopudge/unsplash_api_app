import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';

class SplashErrorView extends StatelessWidget {
  const SplashErrorView({
    super.key,
    required ValueNotifier<bool> showLoginNotifier,
    required this.screenHeight,
    required this.screenWidth,
    required ValueNotifier<bool> isErrorNotifier,
    required this.message,
  })  : _showLoginNotifier = showLoginNotifier,
        _isErrorNotifier = isErrorNotifier;

  final ValueNotifier<bool> _showLoginNotifier;
  final double screenHeight;
  final double screenWidth;
  final String message;
  final ValueNotifier<bool> _isErrorNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _showLoginNotifier,
      builder: (context, isShowed, child) => AnimatedPositioned(
        top: isShowed ? 0 : screenHeight,
        right: isShowed ? 0 : 0,
        left: isShowed ? 0 : 0,
        bottom: isShowed ? 0 : screenHeight,
        duration: const Duration(
          milliseconds: 2500,
        ),
        child: Opacity(
          opacity: .95,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: screenWidth * .1,
              vertical: screenHeight * .22,
            ),
            height: screenHeight / 2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Colors.white,
            ),
            child: Center(
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.error_outline_rounded,
                          color: Colors.red,
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Oops...',
                          textAlign: TextAlign.center,
                          style: AppFonts.titleStyle.copyWith(
                            foreground: Paint()
                              ..shader = AppColors.linearGradientPink,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          message,
                          textAlign: TextAlign.justify,
                          style: AppFonts.smallStyle.copyWith(
                            fontSize: 18,
                            foreground: Paint()
                              ..shader = AppColors.linearGradientPink,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            _showLoginNotifier.value = false;
                            Future.delayed(
                                const Duration(
                                  milliseconds: 1000,
                                ), () {
                              _isErrorNotifier.value = false;
                            });
                            Future.delayed(
                                const Duration(
                                  milliseconds: 1500,
                                ), () {
                              _showLoginNotifier.value = true;
                            });
                          },
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
                            'Try again',
                            style: AppFonts.titleStyle.copyWith(
                              foreground: Paint()
                                ..shader = AppColors.linearGradientPink,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

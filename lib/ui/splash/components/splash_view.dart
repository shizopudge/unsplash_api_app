import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../core/colors.dart';
import '../../../core/fonts.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key,
    required ValueNotifier<bool> showLoginNotifier,
    required this.screenHeight,
    required this.screenWidth,
  }) : _showLoginNotifier = showLoginNotifier;

  final ValueNotifier<bool> _showLoginNotifier;
  final double screenHeight;
  final double screenWidth;

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
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/icons/launch_icon.png',
                              ),
                              fit: BoxFit.cover,
                            ),
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
                                milliseconds: 2500,
                              ),
                              () => context.read<AuthBloc>().add(
                                    const AuthEvent.authorize(),
                                  ),
                            );
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
                            'Login / Sign up',
                            style: AppFonts.titleStyle.copyWith(
                              foreground: Paint()
                                ..shader = AppColors.linearGradientPink,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(
                          onPressed: () {
                            _showLoginNotifier.value = false;
                            Future.delayed(
                              const Duration(
                                milliseconds: 2500,
                              ),
                              () => context.go('/home'),
                            );
                          },
                          child: Wrap(
                            alignment: WrapAlignment.center,
                            children: [
                              Text(
                                'Continue without authorization',
                                textAlign: TextAlign.center,
                                style: AppFonts.smallStyle.copyWith(
                                  fontSize: 18,
                                  foreground: Paint()
                                    ..shader = AppColors.linearGradientPink,
                                ),
                              ),
                              ShaderMask(
                                shaderCallback: (bounds) {
                                  return AppColors.linearGradientBlue
                                      .createShader(bounds);
                                },
                                blendMode: BlendMode.srcIn,
                                child: const Icon(
                                  Icons.arrow_circle_right,
                                  size: 21,
                                ),
                              ),
                            ],
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

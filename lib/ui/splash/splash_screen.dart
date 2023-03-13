import 'package:animated_app/data/repositories/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../core/colors.dart';
import '../../core/fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final ValueNotifier<bool> _showLoginNotifier = ValueNotifier<bool>(false);
  // final ValueNotifier<double> _bgOpacityNotifier = ValueNotifier<double>(0);
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        milliseconds: 500,
      ),
      () {
        _showLoginNotifier.value = true;
        // _bgOpacityNotifier.value = 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          const RiveAnimation.asset(
            'assets/splash.riv',
            fit: BoxFit.cover,
          ),
          // ValueListenableBuilder(
          //   valueListenable: _bgOpacityNotifier,
          //   builder: (BuildContext context, double opacity, Widget? child) =>
          //       AnimatedOpacity(
          //     opacity: opacity,
          //     duration: const Duration(
          //       milliseconds: 3000,
          //     ),
          //     child: SizedBox(
          //       height: screenHeight,
          //       width: screenWidth,
          //       child: BackdropFilter(
          //         filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
          //         child: SizedBox(
          //           height: screenHeight,
          //           width: screenWidth,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          ValueListenableBuilder(
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
                    vertical: screenHeight * .2,
                  ),
                  height: screenHeight / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            radius: 75,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                _showLoginNotifier.value = false;
                                // _bgOpacityNotifier.value = 1;
                                Future.delayed(
                                  const Duration(
                                    milliseconds: 4000,
                                  ),
                                  () => AuthRepository().auth(),
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
                                'Login',
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
                                // _bgOpacityNotifier.value = 1;
                                Future.delayed(
                                  const Duration(
                                    milliseconds: 4000,
                                  ),
                                  () => context.go('/home'),
                                );
                              },
                              child: Wrap(
                                alignment: WrapAlignment.spaceAround,
                                runAlignment: WrapAlignment.spaceAround,
                                children: [
                                  Text(
                                    'Continue without authorization',
                                    style: AppFonts.smallStyle.copyWith(
                                      fontSize: 16,
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
        ],
      ),
    );
  }
}

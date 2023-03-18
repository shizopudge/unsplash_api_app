import 'package:animated_app/bloc/auth_bloc/auth_bloc.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../core/fonts.dart';
import 'components/splash_error_view.dart';
import 'components/splash_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final ValueNotifier<bool> _showLoginNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isErrorNotifier = ValueNotifier<bool>(false);
  late String message;
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(
        milliseconds: 100,
      ),
      () {
        _showLoginNotifier.value = true;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthErrorState) {
            _isErrorNotifier.value = true;
            message = state.message;
            Future.delayed(
                const Duration(
                  milliseconds: 500,
                ), () {
              _showLoginNotifier.value = true;
            });
          } else if (state is AuthNotAuthorizedState) {
            _showLoginNotifier.value = true;
          } else if (state is AuthAuthorizedState) {
            Future.delayed(
              const Duration(
                milliseconds: 5000,
              ),
              () => context.go('/home'),
            );
          }
        },
        builder: (context, state) {
          return Stack(
            children: [
              const RiveAnimation.asset(
                'assets/splash.riv',
                fit: BoxFit.cover,
              ),
              state.when(
                initial: () => const SizedBox(),
                loading: () => const SizedBox(),
                authorized: (user) => Center(
                  child: DefaultTextStyle(
                    style: AppFonts.headerStyle.copyWith(
                      color: Colors.white,
                    ),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Hi\n${user.username}',
                          textAlign: TextAlign.center,
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                    ),
                  ),
                ),
                notAuthorized: (message) => SplashView(
                    showLoginNotifier: _showLoginNotifier,
                    screenHeight: screenHeight,
                    screenWidth: screenWidth),
                error: (message) => ValueListenableBuilder(
                  valueListenable: _isErrorNotifier,
                  builder: (context, isError, child) {
                    if (isError) {
                      return SplashErrorView(
                        showLoginNotifier: _showLoginNotifier,
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        isErrorNotifier: _isErrorNotifier,
                        message: message,
                      );
                    } else {
                      return SplashView(
                        showLoginNotifier: _showLoginNotifier,
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                      );
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

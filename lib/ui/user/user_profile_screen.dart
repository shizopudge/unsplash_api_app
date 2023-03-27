import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../bloc/user_bloc/user_bloc.dart';
import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../common/circular_loader.dart';
import 'components/profile_first_page.dart';
import 'components/profile_second_page.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  final PageController _pageController = PageController();
  final ValueNotifier<bool> _showAvatarValueNotifier =
      ValueNotifier<bool>(false);
  final ValueNotifier<double> _currentPage = ValueNotifier<double>(0);

  @override
  void initState() {
    super.initState();
    _pageController.addListener(_onPageChanged);
    _showAvatarValueNotifier.value = true;
  }

  @override
  void dispose() {
    _pageController.removeListener(_onPageChanged);
    _pageController.dispose();
    _showAvatarValueNotifier.dispose();
    _currentPage.dispose();
    super.dispose();
  }

  _onPageChanged() {
    _currentPage.value = _pageController.page ?? 0;
    if (_pageController.page == 0.0) {
      _showAvatarValueNotifier.value = true;
    } else {
      _showAvatarValueNotifier.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final UserState state = context.watch<UserBloc>().state;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(
            Icons.arrow_back_rounded,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
            ),
          ),
          const RiveAnimation.asset(
            "assets/bg.riv",
            fit: BoxFit.cover,
          ),
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
              child: const SizedBox(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15, left: 8, right: 8),
            child: state.when(
              initial: () => const CircularLoader(),
              loading: () => const CircularLoader(),
              loaded: (user) => PageView(
                scrollDirection: Axis.vertical,
                controller: _pageController,
                children: [
                  ProfileFirstPage(
                    showAvatarValueNotifier: _showAvatarValueNotifier,
                    screenWidth: screenWidth,
                    currentPage: _currentPage,
                    pageController: _pageController,
                    user: user,
                  ),
                  ProfileSecondPage(
                    currentPage: _currentPage,
                    pageController: _pageController,
                    user: user,
                  ),
                ],
              ),
              error: (error) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_rounded,
                    color: Colors.red.shade900,
                    size: 50,
                  ),
                  Text(
                    error,
                    textAlign: TextAlign.center,
                    style: AppFonts.defaultStyle.copyWith(
                      foreground: Paint()..shader = AppColors.linearGradientRed,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

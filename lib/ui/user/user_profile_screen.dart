import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../bloc/user_bloc/user_bloc.dart';
import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../common/circular_loader.dart';
import 'components/social_widget.dart';
import 'components/stat_widget.dart';

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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CachedNetworkImage(
                              imageUrl: user.profile_image.large,
                              imageBuilder: (context, imageProvider) =>
                                  ValueListenableBuilder(
                                valueListenable: _showAvatarValueNotifier,
                                builder: (context, isShowed, child) => Card(
                                  margin: const EdgeInsets.all(8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21),
                                  ),
                                  elevation: 8,
                                  child: AnimatedContainer(
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    curve: Curves.easeInOutCubicEmphasized,
                                    height: isShowed ? 200 : 0,
                                    width: isShowed ? screenWidth / 2 : 0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              placeholder: (context, url) =>
                                  ValueListenableBuilder(
                                valueListenable: _showAvatarValueNotifier,
                                builder: (context, isShowed, child) => Card(
                                  margin: const EdgeInsets.all(8),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21),
                                  ),
                                  elevation: 8,
                                  child: AnimatedContainer(
                                    duration:
                                        const Duration(milliseconds: 1000),
                                    curve: Curves.easeInOutCubicEmphasized,
                                    height: isShowed ? 200 : 0,
                                    width: isShowed ? screenWidth / 2 : 0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => Card(
                                margin: const EdgeInsets.all(8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(21),
                                ),
                                elevation: 8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    gradient:
                                        AppColors.silverPlaceholderGradient,
                                  ),
                                  child: ShaderMask(
                                    blendMode: BlendMode.srcIn,
                                    shaderCallback: (bounds) =>
                                        AppColors.linearGradientPink,
                                    child: const Icon(
                                      Icons.photo_rounded,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  AnimatedTextKit(
                                    isRepeatingAnimation: false,
                                    animatedTexts: [
                                      TyperAnimatedText(
                                        user.username,
                                        textStyle:
                                            AppFonts.headerStyle.copyWith(
                                          fontSize: 32,
                                          foreground: Paint()
                                            ..shader =
                                                AppColors.linearGradientPink,
                                        ),
                                        textAlign: TextAlign.center,
                                        speed: const Duration(milliseconds: 90),
                                      ),
                                    ],
                                  ),
                                  AnimatedTextKit(
                                    isRepeatingAnimation: false,
                                    animatedTexts: [
                                      TyperAnimatedText(
                                        user.name,
                                        textStyle: AppFonts.titleStyle.copyWith(
                                          color: Colors.grey,
                                        ),
                                        textAlign: TextAlign.center,
                                        speed:
                                            const Duration(milliseconds: 100),
                                      ),
                                    ],
                                  ),
                                  if (user.location != null)
                                    AnimatedTextKit(
                                      isRepeatingAnimation: false,
                                      animatedTexts: [
                                        TyperAnimatedText(
                                          user.location ?? '',
                                          textStyle:
                                              AppFonts.titleStyle.copyWith(
                                            color: Colors.grey,
                                          ),
                                          textAlign: TextAlign.center,
                                          speed:
                                              const Duration(milliseconds: 110),
                                        ),
                                      ],
                                    ),
                                  if (user.social.instagram_username != null ||
                                      user.social.twitter_username != null)
                                    Wrap(
                                      alignment: WrapAlignment.center,
                                      children: [
                                        if (user.social.instagram_username !=
                                            null)
                                          SocialWidget(
                                            imagePath:
                                                'assets/icons/instagram.png',
                                            imageColor: Colors.blue.shade900,
                                            text: user.social
                                                    .instagram_username ??
                                                '',
                                          ),
                                        if (user.social.twitter_username !=
                                            null)
                                          SocialWidget(
                                            imagePath:
                                                'assets/icons/twitter.png',
                                            imageColor: Colors.blue.shade900,
                                            text:
                                                user.social.twitter_username ??
                                                    '',
                                          ),
                                      ],
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      ValueListenableBuilder(
                        valueListenable: _currentPage,
                        builder: (context, currentPage, child) => currentPage >
                                0
                            ? const SizedBox(
                                height: 24,
                              )
                            : Align(
                                alignment: Alignment.bottomCenter,
                                child: InkWell(
                                  onTap: () => _pageController.animateToPage(
                                    1,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.linear,
                                  ),
                                  borderRadius: BorderRadius.circular(21),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.arrow_drop_down_rounded,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ValueListenableBuilder(
                        valueListenable: _currentPage,
                        builder: (context, currentPage, child) => currentPage <
                                1
                            ? const SizedBox(
                                height: 24,
                              )
                            : Align(
                                alignment: Alignment.topCenter,
                                child: InkWell(
                                  onTap: () => _pageController.animateToPage(
                                    0,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.linear,
                                  ),
                                  borderRadius: BorderRadius.circular(21),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.arrow_drop_up_rounded,
                                        size: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (user.bio != null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  user.bio ?? '',
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.visible,
                                  style: AppFonts.defaultStyle.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Wrap(
                                alignment: WrapAlignment.center,
                                children: [
                                  StatWidget(
                                    icon: Icons.favorite,
                                    text: user.total_likes.toString(),
                                    color: Colors.red.shade900,
                                  ),
                                  StatWidget(
                                    icon: Icons.download,
                                    text: user.downloads.toString(),
                                    color: Colors.lightGreen.shade900,
                                  ),
                                  StatWidget(
                                    icon: Icons.people,
                                    text: user.followers_count.toString(),
                                    color: Colors.blue.shade900,
                                  ),
                                  StatWidget(
                                    icon: Icons.collections,
                                    text: user.total_photos.toString(),
                                    color: Colors.purple.shade900,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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

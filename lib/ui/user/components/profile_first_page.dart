import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../../../data/models/user/user.dart';
import 'social_widget.dart';

class ProfileFirstPage extends StatelessWidget {
  const ProfileFirstPage({
    super.key,
    required ValueNotifier<bool> showAvatarValueNotifier,
    required this.screenWidth,
    required ValueNotifier<double> currentPage,
    required PageController pageController,
    required this.user,
  })  : _showAvatarValueNotifier = showAvatarValueNotifier,
        _currentPage = currentPage,
        _pageController = pageController;

  final ValueNotifier<bool> _showAvatarValueNotifier;
  final double screenWidth;
  final ValueNotifier<double> _currentPage;
  final PageController _pageController;
  final Profile user;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  builder: (context, isShowed, _) => Card(
                    margin: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    elevation: 8,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
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
                placeholder: (context, url) => ValueListenableBuilder(
                  valueListenable: _showAvatarValueNotifier,
                  builder: (context, isShowed, child) => Card(
                    margin: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21),
                    ),
                    elevation: 8,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 1000),
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
                      gradient: AppColors.silverPlaceholderGradient,
                    ),
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => AppColors.linearGradientPink,
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
                          textStyle: AppFonts.headerStyle.copyWith(
                            fontSize: 32,
                            foreground: Paint()
                              ..shader = AppColors.linearGradientPink,
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
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                    ),
                    if (user.location != null)
                      AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TyperAnimatedText(
                            user.location ?? '',
                            textStyle: AppFonts.titleStyle.copyWith(
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                            speed: const Duration(milliseconds: 110),
                          ),
                        ],
                      ),
                    if (user.social.instagram_username != null ||
                        user.social.twitter_username != null)
                      Wrap(
                        alignment: WrapAlignment.center,
                        children: [
                          if (user.social.instagram_username != null)
                            SocialWidget(
                              imagePath: 'assets/icons/instagram.png',
                              imageColor: Colors.blue.shade900,
                              text: user.social.instagram_username ?? '',
                            ),
                          if (user.social.twitter_username != null)
                            SocialWidget(
                              imagePath: 'assets/icons/twitter.png',
                              imageColor: Colors.blue.shade900,
                              text: user.social.twitter_username ?? '',
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
          builder: (context, currentPage, child) => currentPage > 0
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
    );
  }
}

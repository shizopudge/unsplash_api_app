import 'package:flutter/material.dart';

import '../../../core/fonts.dart';
import '../../../data/models/user/user.dart';
import 'stat_widget.dart';

class ProfileSecondPage extends StatelessWidget {
  const ProfileSecondPage({
    super.key,
    required ValueNotifier<double> currentPage,
    required PageController pageController,
    required this.user,
  })  : _currentPage = currentPage,
        _pageController = pageController;

  final ValueNotifier<double> _currentPage;
  final PageController _pageController;
  final Profile user;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ValueListenableBuilder(
          valueListenable: _currentPage,
          builder: (context, currentPage, child) => currentPage < 1
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
    );
  }
}

import 'dart:ui';

import 'package:animated_app/ui/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../state/home_grid_cubit.dart';

class HomeAppbar extends StatelessWidget {
  final double height;
  final ValueNotifier<bool> isCollapsed;
  final TextEditingController searchController;
  const HomeAppbar({
    super.key,
    required this.height,
    required this.searchController,
    required this.isCollapsed,
  });

  @override
  Widget build(BuildContext context) {
    final int state = context.watch<HomeGridTypeCubit>().state;
    return SliverAppBar(
      automaticallyImplyLeading: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      actions: [
        PopupMenuButton(
          icon: const Icon(
            Icons.grid_view_rounded,
            color: Colors.white,
          ),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          position: PopupMenuPosition.under,
          itemBuilder: (BuildContext context) => List<PopupMenuItem>.generate(
            5,
            (index) => PopupMenuItem(
              onTap: () =>
                  context.read<HomeGridTypeCubit>().setGridType(index + 1),
              child: Align(
                alignment: Alignment.center,
                child: index + 1 == state
                    ? Image.asset(
                        'assets/icons/grid${index + 1}.png',
                        color: Colors.black,
                        height: 30,
                        width: 30,
                      )
                    : Image.asset(
                        'assets/icons/grid${index + 1}.png',
                        color: Colors.grey.shade700,
                        height: 30,
                        width: 30,
                      ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () => Scaffold.of(context).openEndDrawer(),
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ],
      floating: true,
      snap: true,
      elevation: 0,
      expandedHeight: height * .3,
      backgroundColor: Colors.black,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.none,
        expandedTitleScale: 1.2,
        background: Stack(
          children: [
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: isCollapsed,
              builder: (context, isCollapsed, child) => isCollapsed
                  ? const SizedBox()
                  : const RiveAnimation.asset(
                      "assets/bg.riv",
                      fit: BoxFit.cover,
                    ),
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: const SizedBox(),
              ),
            ),
          ],
        ),
        title: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    text: 'Search for\n',
                    style: AppFonts.titleStyle,
                    children: [
                      TextSpan(
                        text: 'INCREADIBLE',
                        style: AppFonts.headerStyle.copyWith(
                          foreground: Paint()
                            ..shader = AppColors.linearGradientPink,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SearchField(
                searchController: searchController,
              ),
            ],
          ),
        ),
        titlePadding: const EdgeInsets.all(25),
      ),
    );
  }
}

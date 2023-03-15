import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';

import '../../../bloc/images_bloc/images_bloc.dart';
import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../state/home_grid_cubit.dart';

class HomeAppbar extends StatelessWidget {
  final double height;
  final bool isCollapsed;
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
            if (!isCollapsed)
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

class SearchField extends StatelessWidget {
  final TextEditingController searchController;
  const SearchField({
    super.key,
    required this.searchController,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(21),
      ),
      color: Colors.white,
      child: TextField(
        controller: searchController,
        onSubmitted: (query) => context.read<ImagesBloc>().add(
              ImagesEvent.searchImages(
                page: 1,
                query: query,
              ),
            ),
        onEditingComplete: () => context.read<ImagesBloc>().add(
              ImagesEvent.searchImages(
                query: searchController.text.trim(),
                page: 1,
              ),
            ),
        cursorColor: Colors.black,
        cursorWidth: 1,
        cursorRadius: const Radius.circular(21),
        style: AppFonts.smallStyle.copyWith(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          hintText: 'Search high-resolution images',
          hintStyle: AppFonts.smallStyle.copyWith(
            color: Colors.grey,
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey.shade700,
          ),
          suffixIcon: ValueListenableBuilder(
            valueListenable: searchController,
            builder: (context, value, child) {
              return searchController.text.isNotEmpty
                  ? IconButton(
                      onPressed: () {
                        searchController.clear();
                        context.read<ImagesBloc>().add(
                              const ImagesEvent.getImages(
                                page: 1,
                              ),
                            );
                      },
                      icon: Icon(
                        Icons.clear_rounded,
                        color: Colors.grey.shade900,
                      ),
                    )
                  : const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

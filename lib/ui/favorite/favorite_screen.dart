import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rive/rive.dart';

import '../../bloc/auth_bloc/auth_bloc.dart';

import '../../bloc/liked_images_bloc/liked_images_bloc.dart';
import '../../core/colors.dart';
import '../../core/fonts.dart';
import '../../core/theme.dart';
import '../../data/models/unsplash_image/unsplash_image.dart';
import '../common/circular_loader.dart';
import '../common/refreshable_grid_view.dart';
import '../home/state/home_grid_cubit.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final RefreshController _refreshController = RefreshController();
  final RefreshController _refreshController2 = RefreshController();
  List<UnsplashImage> _currentImages = [];
  int _currentPage = 1;
  bool _isPagination = false;

  @override
  Widget build(BuildContext context) {
    final LikedImagesState state = context.watch<LikedImagesBloc>().state;
    final String theme = context.watch<ThemeCubit>().state;
    final int gridTypeState = context.watch<HomeGridTypeCubit>().state;
    final AuthState authState = context.watch<AuthBloc>().state;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.grid_view_rounded,
              color: theme == 'dark' ? Colors.white : Colors.black,
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
                  child: index + 1 == gridTypeState
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
        ],
      ),
      body: SafeArea(
        child: Stack(
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
            state.when(
              initial: () => const CircularLoader(),
              loading: () {
                if (!_isPagination) {
                  return const CircularLoader();
                } else {
                  return GridViewRefresher(
                    isFavorite: true,
                    isRefreshable: false,
                    refreshController: _refreshController2,
                    images: _currentImages,
                  );
                }
              },
              loaded: (images, isLikedOrUnliked) {
                if (isLikedOrUnliked) {
                  _currentImages = images;
                  if (_refreshController.isLoading) {
                    _refreshController.loadComplete();
                  }
                  if (_refreshController.isRefresh) {
                    _refreshController.refreshCompleted();
                  }
                  _isPagination = false;
                } else {
                  if (images.isEmpty) {
                    _refreshController.loadNoData();
                  } else {
                    _refreshController.resetNoData();
                    if (_isPagination) {
                      _currentImages += images;
                      if (_refreshController.isLoading) {
                        _refreshController.loadComplete();
                      }
                      if (_refreshController.isRefresh) {
                        _refreshController.refreshCompleted();
                      }
                      _isPagination = false;
                    } else {
                      _currentImages = images;
                      if (_refreshController.isLoading) {
                        _refreshController.loadComplete();
                      }
                      if (_refreshController.isRefresh) {
                        _refreshController.refreshCompleted();
                      }
                    }
                  }
                }
                if (authState is AuthAuthorizedState) {
                  if (_currentImages.isNotEmpty) {
                    return GridViewRefresher(
                      isFavorite: true,
                      isRefreshable: true,
                      refreshController: _refreshController,
                      images: _currentImages,
                      onRefresh: () {
                        _isPagination = false;
                        _currentPage = 1;
                        context.read<LikedImagesBloc>().add(
                              LikedImagesEvent.getLikedImages(
                                page: _currentPage,
                                username: authState.user.username,
                              ),
                            );
                      },
                      onLoading: () {
                        _isPagination = true;
                        _currentPage++;
                        context.read<LikedImagesBloc>().add(
                              LikedImagesEvent.getLikedImages(
                                page: _currentPage,
                                username: authState.user.username,
                              ),
                            );
                      },
                    );
                  } else {
                    return SingleChildScrollView(
                      child: Center(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 100,
                            ),
                            ShaderMask(
                              blendMode: BlendMode.srcIn,
                              shaderCallback: (bounds) =>
                                  AppColors.linearGradientRed,
                              child: const Icon(
                                Icons.image_rounded,
                                size: 150,
                              ),
                            ),
                            Text(
                              'There are no liked photos here...',
                              textAlign: TextAlign.center,
                              style: AppFonts.titleStyle.copyWith(
                                foreground: Paint()
                                  ..shader = AppColors.linearGradientRed,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'You are not authorized.',
                          textAlign: TextAlign.center,
                          style: AppFonts.titleStyle.copyWith(
                            foreground: Paint()
                              ..shader = AppColors.linearGradientPink,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: ElevatedButton(
                          onPressed: () => context.go('/'),
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
                            style: AppFonts.defaultStyle.copyWith(
                              foreground: Paint()
                                ..shader = AppColors.linearGradientPink,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
              },
              error: (message) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.error_rounded,
                    color: Colors.red.shade900,
                    size: 50,
                  ),
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: AppFonts.defaultStyle.copyWith(
                      foreground: Paint()..shader = AppColors.linearGradientRed,
                    ),
                  ),
                  if (authState is AuthAuthorizedState)
                    IconButton(
                      onPressed: () => context.read<LikedImagesBloc>().add(
                            LikedImagesEvent.getLikedImages(
                              page: 1,
                              username: authState.user.username,
                            ),
                          ),
                      icon: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => AppColors.linearGradientRed,
                        child: const Icon(
                          Icons.refresh_rounded,
                          size: 32,
                        ),
                      ),
                    )
                  else
                    IconButton(
                      onPressed: () => context.pop(),
                      icon: ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => AppColors.linearGradientRed,
                        child: const Icon(
                          Icons.refresh_rounded,
                          size: 32,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

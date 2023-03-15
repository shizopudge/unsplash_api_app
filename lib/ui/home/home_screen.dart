import 'dart:ui';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:animated_app/bloc/images_bloc/images_bloc.dart';
import 'package:animated_app/core/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rive/rive.dart';

import '../../../core/colors.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';
import 'components/drawer.dart';
import 'components/home_appbar.dart';
import 'components/image_card.dart';
import 'state/home_appbar_cubit.dart';
import 'state/home_grid_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  final RefreshController _refreshController = RefreshController();
  final RefreshController _refreshController2 = RefreshController();
  List<UnsplashImage> _currentImages = [];
  int _currentPage = 1;
  bool _isPagination = false;
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  _onScroll() {
    if (_scrollController.offset > 200) {
      context.read<HomeAppbarCubit>().isCollapsed(true);
    }
    if (_scrollController.offset <= 200) {
      context.read<HomeAppbarCubit>().isCollapsed(false);
    }
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    _scrollController.removeListener(_onScroll);
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ImagesState state = context.watch<ImagesBloc>().state;
    final bool isCollapsed = context.watch<HomeAppbarCubit>().state;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: const HomeDrawer(),
      body: SafeArea(
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            HomeAppbar(
              height: screenHeight,
              isCollapsed: isCollapsed,
              searchController: _searchController,
            ),
          ],
          body: state.when(
            initial: () => Center(
              child: SizedBox(
                height: screenHeight * .3,
                child: const RiveAnimation.asset(
                  'assets/loading.riv',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            loading: () {
              if (!_isPagination) {
                return Center(
                  child: SizedBox(
                    height: screenHeight * .3,
                    child: const RiveAnimation.asset(
                      'assets/loading.riv',
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              } else {
                return _gridView(
                    _currentImages, null, null, _refreshController2);
              }
            },
            loaded: (images, total, total_pages) {
              if (_isPagination) {
                _currentImages = images;
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
              return Stack(
                children: [
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 10),
                    ),
                  ),
                  isCollapsed
                      ? const RiveAnimation.asset(
                          "assets/bg.riv",
                          fit: BoxFit.cover,
                        )
                      : const SizedBox(),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: const SizedBox(),
                    ),
                  ),
                  if (_currentImages.isNotEmpty)
                    _gridView(
                      _currentImages,
                      total,
                      total_pages,
                      _refreshController,
                    )
                  else
                    SingleChildScrollView(
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
                              'Sorry, your search did not match any results.',
                              textAlign: TextAlign.center,
                              style: AppFonts.titleStyle.copyWith(
                                foreground: Paint()
                                  ..shader = AppColors.linearGradientRed,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                context.read<ImagesBloc>().add(
                                      const ImagesEvent.getImages(
                                        page: 1,
                                      ),
                                    );
                                _searchController.clear();
                              },
                              icon: ShaderMask(
                                blendMode: BlendMode.srcIn,
                                shaderCallback: (bounds) =>
                                    AppColors.linearGradientRed,
                                child: const Icon(
                                  Icons.refresh_rounded,
                                  size: 32,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              );
            },
            error: (error) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  error,
                  textAlign: TextAlign.center,
                  style: AppFonts.defaultStyle.copyWith(
                    foreground: Paint()..shader = AppColors.linearGradientRed,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    context.read<ImagesBloc>().add(
                          const ImagesEvent.getImages(
                            page: 1,
                          ),
                        );
                    _searchController.clear();
                  },
                  icon: ShaderMask(
                    blendMode: BlendMode.srcIn,
                    shaderCallback: (bounds) => AppColors.linearGradientRed,
                    child: const Icon(
                      Icons.refresh_rounded,
                      size: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _gridView(List<UnsplashImage> images, int? total, int? total_pages,
      RefreshController refreshController) {
    final int state = context.watch<HomeGridTypeCubit>().state;
    if (state == 1) {
      return SmartRefresher(
        controller: refreshController,
        enablePullUp: true,
        enablePullDown: true,
        header: const WaterDropMaterialHeader(
          distance: 150.0,
          backgroundColor: Colors.white,
          color: Colors.pink,
        ),
        onRefresh: () {
          _isPagination = false;
          _currentPage = 1;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            context.read<ImagesBloc>().add(
                  ImagesEvent.searchImages(
                    query: _searchController.text.trim(),
                    page: _currentPage,
                  ),
                );
          }
        },
        onLoading: () {
          _isPagination = true;
          _currentPage++;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            if (total_pages != null) {
              if (_currentPage <= total_pages) {
                context.read<ImagesBloc>().add(
                      ImagesEvent.searchImages(
                        query: _searchController.text.trim(),
                        page: _currentPage,
                      ),
                    );
              } else {
                refreshController.loadNoData();
              }
            } else {
              refreshController.loadNoData();
            }
          }
        },
        child: GridView.custom(
          gridDelegate: SliverWovenGridDelegate.count(
            crossAxisCount: 2,
            pattern: [
              const WovenGridTile(1),
              const WovenGridTile(
                5 / 7,
                crossAxisRatio: 0.95,
                alignment: AlignmentDirectional.centerEnd,
              ),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              final UnsplashImage image = images[index];
              return ImageCard(
                image: image,
              );
            },
            childCount: images.length,
          ),
        ),
      );
    } else if (state == 2) {
      return SmartRefresher(
        controller: refreshController,
        enablePullUp: true,
        enablePullDown: true,
        header: const WaterDropMaterialHeader(
          distance: 150.0,
          backgroundColor: Colors.white,
          color: Colors.pink,
        ),
        onRefresh: () {
          _isPagination = false;
          _currentPage = 1;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            context.read<ImagesBloc>().add(
                  ImagesEvent.searchImages(
                    query: _searchController.text.trim(),
                    page: _currentPage,
                  ),
                );
          }
        },
        onLoading: () {
          _isPagination = true;
          _currentPage++;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            if (total_pages != null) {
              if (_currentPage <= total_pages) {
                context.read<ImagesBloc>().add(
                      ImagesEvent.searchImages(
                        query: _searchController.text.trim(),
                        page: _currentPage,
                      ),
                    );
              } else {
                refreshController.loadNoData();
              }
            } else {
              refreshController.loadNoData();
            }
          }
        },
        child: GridView.custom(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 6,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: const [
              QuiltedGridTile(4, 4),
              QuiltedGridTile(2, 2),
              QuiltedGridTile(2, 2),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              final UnsplashImage image = images[index];
              return ImageCard(
                image: image,
              );
            },
            childCount: images.length,
          ),
        ),
      );
    } else if (state == 3) {
      return SmartRefresher(
        controller: refreshController,
        enablePullUp: true,
        enablePullDown: true,
        header: const WaterDropMaterialHeader(
          distance: 150.0,
          backgroundColor: Colors.white,
          color: Colors.pink,
        ),
        onRefresh: () {
          _isPagination = false;
          _currentPage = 1;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            context.read<ImagesBloc>().add(
                  ImagesEvent.searchImages(
                    query: _searchController.text.trim(),
                    page: _currentPage,
                  ),
                );
          }
        },
        onLoading: () {
          _isPagination = true;
          _currentPage++;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            if (total_pages != null) {
              if (_currentPage <= total_pages) {
                context.read<ImagesBloc>().add(
                      ImagesEvent.searchImages(
                        query: _searchController.text.trim(),
                        page: _currentPage,
                      ),
                    );
              } else {
                refreshController.loadNoData();
              }
            } else {
              refreshController.loadNoData();
            }
          }
        },
        child: GridView.custom(
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 4,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              const QuiltedGridTile(2, 2),
              const QuiltedGridTile(1, 1),
              const QuiltedGridTile(1, 1),
              const QuiltedGridTile(1, 2),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            childCount: images.length,
            (context, index) {
              final UnsplashImage image = images[index];
              return ImageCard(
                image: image,
              );
            },
          ),
        ),
      );
    } else if (state == 4) {
      return SmartRefresher(
        controller: refreshController,
        enablePullUp: true,
        enablePullDown: true,
        header: const WaterDropMaterialHeader(
          distance: 150.0,
          backgroundColor: Colors.white,
          color: Colors.pink,
        ),
        onRefresh: () {
          _isPagination = false;
          _currentPage = 1;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            context.read<ImagesBloc>().add(
                  ImagesEvent.searchImages(
                    query: _searchController.text.trim(),
                    page: _currentPage,
                  ),
                );
          }
        },
        onLoading: () {
          _isPagination = true;
          _currentPage++;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            if (total_pages != null) {
              if (_currentPage <= total_pages) {
                context.read<ImagesBloc>().add(
                      ImagesEvent.searchImages(
                        query: _searchController.text.trim(),
                        page: _currentPage,
                      ),
                    );
              } else {
                refreshController.loadNoData();
              }
            } else {
              refreshController.loadNoData();
            }
          }
        },
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            final UnsplashImage image = images[index];
            return ImageCard(
              image: image,
            );
          },
        ),
      );
    } else {
      return SmartRefresher(
        controller: refreshController,
        enablePullUp: true,
        enablePullDown: true,
        header: const WaterDropMaterialHeader(
          distance: 150.0,
          backgroundColor: Colors.white,
          color: Colors.pink,
        ),
        onRefresh: () {
          _isPagination = false;
          _currentPage = 1;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            context.read<ImagesBloc>().add(
                  ImagesEvent.searchImages(
                    query: _searchController.text.trim(),
                    page: _currentPage,
                  ),
                );
          }
        },
        onLoading: () {
          _isPagination = true;
          _currentPage++;
          if (_searchController.text.isEmpty) {
            context.read<ImagesBloc>().add(
                  ImagesEvent.getImages(
                    page: _currentPage,
                  ),
                );
          } else {
            if (total_pages != null) {
              if (_currentPage <= total_pages) {
                context.read<ImagesBloc>().add(
                      ImagesEvent.searchImages(
                        query: _searchController.text.trim(),
                        page: _currentPage,
                      ),
                    );
              } else {
                refreshController.loadNoData();
              }
            } else {
              refreshController.loadNoData();
            }
          }
        },
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1),
          itemBuilder: (context, index) {
            final UnsplashImage image = images[index];
            return ImageCard(
              image: image,
            );
          },
        ),
      );
    }
  }
}

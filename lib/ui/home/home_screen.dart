import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rive/rive.dart';

import '../../../core/colors.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';
import '../../bloc/images_bloc/images_bloc.dart';
import '../../core/fonts.dart';
import '../common/circular_loader.dart';
import '../common/refreshable_grid_view.dart';
import 'components/drawer.dart';
import 'components/home_appbar.dart';

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
  final ValueNotifier<bool> _isCollapsed = ValueNotifier<bool>(false);
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
      _isCollapsed.value = true;
    }
    if (_scrollController.offset <= 200) {
      _isCollapsed.value = false;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.removeListener(_onScroll);
    _searchController.dispose();
    _refreshController.dispose();
    _refreshController2.dispose();
    _isCollapsed.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ImagesState state = context.watch<ImagesBloc>().state;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      endDrawer: const HomeDrawer(),
      body: SafeArea(
        child: NestedScrollView(
          controller: _scrollController,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            HomeAppbar(
              height: screenHeight,
              isCollapsed: _isCollapsed,
              searchController: _searchController,
            ),
          ],
          body: state.when(
            initial: () => const CircularLoader(),
            loading: () {
              if (!_isPagination) {
                return const CircularLoader();
              } else {
                return GridViewRefresher(
                  isFavorite: false,
                  isRefreshable: true,
                  refreshController: _refreshController2,
                  images: _currentImages,
                );
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
                  ValueListenableBuilder(
                    valueListenable: _isCollapsed,
                    builder: (context, isCollapsed, child) => isCollapsed
                        ? const RiveAnimation.asset(
                            "assets/bg.riv",
                            fit: BoxFit.cover,
                          )
                        : const SizedBox(),
                  ),
                  Positioned.fill(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: const SizedBox(),
                    ),
                  ),
                  if (_currentImages.isNotEmpty)
                    GridViewRefresher(
                      isFavorite: false,
                      isRefreshable: true,
                      refreshController: _refreshController,
                      images: _currentImages,
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
                              _refreshController.loadNoData();
                            }
                          } else {
                            _refreshController.loadNoData();
                          }
                        }
                      },
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
}

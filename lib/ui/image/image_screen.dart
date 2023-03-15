import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rive/rive.dart';

import '../../bloc/image_bloc/image_bloc.dart';
import '../../core/colors.dart';
import '../../core/fonts.dart';
import 'components/big_image.dart';
import 'components/image_view.dart';
import 'state/image_cubit.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  final ValueNotifier<bool> _isSharingOrDownloadingValueNotifier =
      ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    final ImageState state = context.watch<ImageBloc>().state;
    final bool isImageBig = context.watch<ImageCubit>().state;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
              initial: () => Center(
                child: SizedBox(
                  height: screenHeight * .3,
                  child: const RiveAnimation.asset(
                    'assets/loading.riv',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              loading: () => Center(
                child: SizedBox(
                  height: screenHeight * .3,
                  child: const RiveAnimation.asset(
                    'assets/loading.riv',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              loaded: (image) => isImageBig
                  ? BigImage(image: image)
                  : ImageView(
                      image: image,
                      isSharingOrDownloadingValueNotifier:
                          _isSharingOrDownloadingValueNotifier,
                    ),
              error: (error) => Stack(
                alignment: Alignment.topLeft,
                children: [
                  Center(
                    child: Text(
                      error,
                      textAlign: TextAlign.center,
                      style: AppFonts.defaultStyle.copyWith(
                        foreground: Paint()
                          ..shader = AppColors.linearGradientRed,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () => context.pop(),
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                    ),
                  ),
                ],
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _isSharingOrDownloadingValueNotifier,
              builder: (context, isSharingOrDownloading, child) =>
                  SizedBox.expand(
                child: isSharingOrDownloading
                    ? Stack(
                        children: [
                          Positioned.fill(
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                              child: const SizedBox(),
                            ),
                          ),
                          const Center(
                            child: RiveAnimation.asset(
                              'assets/loading.riv',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      )
                    : const SizedBox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

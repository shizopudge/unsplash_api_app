import 'package:animated_app/core/theme.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../bloc/auth_bloc/auth_bloc.dart';
import '../../../bloc/liked_images_bloc/liked_images_bloc.dart';
import '../../../core/colors.dart';
import '../../../core/fonts.dart';
import '../../common/circular_loader.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthState state = context.watch<AuthBloc>().state;
    final String theme = context.watch<ThemeCubit>().state;
    return SafeArea(
      child: Drawer(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(
              21,
            ),
            topLeft: Radius.circular(
              21,
            ),
          ),
        ),
        child: state.when(
          initial: () => const CircularLoader(),
          loading: () => const CircularLoader(),
          authorized: (user) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  if (theme == 'dark')
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) =>
                              AppColors.linearGradientRed,
                          child: IconButton(
                            onPressed: () =>
                                context.read<ThemeCubit>().setTheme('light'),
                            icon: const Icon(
                              Icons.light_mode,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) =>
                              AppColors.linearGradientRed,
                          child: IconButton(
                            onPressed: () =>
                                context.read<ThemeCubit>().setTheme('dark'),
                            icon: const Icon(
                              Icons.dark_mode,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CachedNetworkImage(
                      imageUrl: user.profile_image.large,
                      imageBuilder: (context, imageProvider) => CircleAvatar(
                        backgroundColor: Colors.grey.shade100,
                        backgroundImage: imageProvider,
                        radius: 75,
                      ),
                      placeholder: (context, url) => ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => AppColors.linearGradientRed,
                        child: const CircleAvatar(
                          radius: 75,
                        ),
                      ),
                      errorWidget: (context, url, error) => CircleAvatar(
                        radius: 75,
                        child: ShaderMask(
                          blendMode: BlendMode.srcIn,
                          shaderCallback: (bounds) =>
                              AppColors.linearGradientRed,
                          child: const Icon(
                            Icons.photo_rounded,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => AppColors.linearGradientPink,
                      child: Text(
                        user.username,
                        style:
                            AppFonts.titleStyle.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                  DrawerListTile(
                    icon: Icons.person,
                    text: 'Profile',
                    onTap: () => context.go(
                      '/home/current_user_profile',
                    ),
                  ),
                  DrawerListTile(
                    icon: Icons.favorite,
                    text: 'Likes',
                    onTap: () {
                      context.read<LikedImagesBloc>().add(
                            LikedImagesEvent.getLikedImages(
                              page: 1,
                              username: user.username,
                            ),
                          );
                      context.go('/home/favorite');
                    },
                  ),
                  DrawerListTile(
                    icon: Icons.image_rounded,
                    text: 'Collections',
                    onTap: () {},
                  ),
                  DrawerListTile(
                    icon: Icons.logout,
                    text: 'Logout',
                    onTap: () {
                      Scaffold.of(context).closeEndDrawer();
                      context.go('/');
                      context.read<AuthBloc>().add(
                            const AuthEvent.logout(),
                          );
                    },
                  ),
                ],
              ),
            ),
          ),
          notAuthorized: (message) => Stack(
            children: [
              if (theme == 'dark')
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => AppColors.linearGradientRed,
                      child: IconButton(
                        onPressed: () =>
                            context.read<ThemeCubit>().setTheme('light'),
                        icon: const Icon(
                          Icons.light_mode,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                )
              else
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => AppColors.linearGradientRed,
                      child: IconButton(
                        onPressed: () =>
                            context.read<ThemeCubit>().setTheme('dark'),
                        icon: const Icon(
                          Icons.dark_mode,
                          size: 32,
                        ),
                      ),
                    ),
                  ),
                ),
              Column(
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
              ),
            ],
          ),
          error: (message) => Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.error_outline_rounded,
                  color: Colors.red,
                  size: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Oops...',
                  textAlign: TextAlign.center,
                  style: AppFonts.titleStyle.copyWith(
                    foreground: Paint()..shader = AppColors.linearGradientPink,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: AppFonts.smallStyle.copyWith(
                    fontSize: 14,
                    foreground: Paint()..shader = AppColors.linearGradientPink,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  final void Function()? onTap;
  final IconData icon;
  final String text;
  const DrawerListTile({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) => AppColors.linearGradientRed,
        child: ListTile(
          onTap: onTap,
          tileColor: Colors.transparent,
          leading: Icon(
            icon,
            size: 40,
          ),
          title: Text(
            text,
            style: AppFonts.titleStyle,
          ),
        ),
      ),
    );
  }
}

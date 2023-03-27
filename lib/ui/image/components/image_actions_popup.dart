import 'package:flutter/material.dart';

import '../../../core/fonts.dart';
import '../../../core/utils.dart';
import '../../../data/models/unsplash_image/unsplash_image.dart';

class ImageActionsPopup extends StatelessWidget {
  const ImageActionsPopup({
    super.key,
    required this.image,
    required this.isSharingOrDownloadingValueNotifier,
  });

  final UnsplashImage image;
  final ValueNotifier<bool> isSharingOrDownloadingValueNotifier;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          padding: const EdgeInsets.all(8),
          onTap: () {
            AppUtils().linkShare(htmlLink: image.links.html ?? '');
          },
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Link',
                  style: AppFonts.smallStyle,
                ),
                const Icon(
                  Icons.ios_share_rounded,
                  size: 28,
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          padding: const EdgeInsets.all(8),
          onTap: () {
            isSharingOrDownloadingValueNotifier.value = true;
            AppUtils()
                .picShare(imageLink: image.links.download ?? '')
                .whenComplete(
                  () => isSharingOrDownloadingValueNotifier.value = false,
                );
          },
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Picture',
                  style: AppFonts.smallStyle,
                ),
                const Icon(
                  Icons.share,
                  size: 28,
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          onTap: () {
            isSharingOrDownloadingValueNotifier.value = true;
            AppUtils()
                .savePictureToGallery(downloadLink: image.links.download ?? '')
                .whenComplete(
              () {
                isSharingOrDownloadingValueNotifier.value = false;
                AppUtils().showSnackBar(
                  context: context,
                  text: 'Image successfully saved into gallery',
                );
              },
            );
          },
          padding: const EdgeInsets.all(8),
          child: Align(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Download',
                  style: AppFonts.smallStyle,
                ),
                const Icon(
                  Icons.download,
                  size: 28,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

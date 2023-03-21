import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:gallery_saver/gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';

import 'fonts.dart';

class AppUtils {
  Future linkShare({
    required String htmlLink,
  }) async {
    await Share.share(htmlLink);
  }

  Future picShare({
    required String imageLink,
  }) async {
    final Uri url = Uri.parse(imageLink);
    final http.Response res = await http.get(url);
    final Uint8List bytes = res.bodyBytes;
    final Directory temp = await getTemporaryDirectory();
    final String path = '${temp.path}/image.jpg';
    File(path).writeAsBytesSync(bytes);
    await Share.shareXFiles(
      [
        XFile(path),
      ],
    );
  }

  Future savePictureToGallery({
    required String downloadLink,
  }) async {
    final Directory temp = await getTemporaryDirectory();
    final String uuid = const Uuid().v4();
    final String path = '${temp.path}/$uuid.jpg';
    final Uri url = Uri.parse(downloadLink);
    final http.Response res = await http.get(url);
    final Uint8List bytes = res.bodyBytes;
    File(path).writeAsBytesSync(bytes);
    await GallerySaver.saveImage(path);
  }

  Future openUrl({required String link}) async {
    final Uri url = Uri.parse(link);
    try {
      await launchUrl(url);
    } catch (e) {
      throw 'Could not launch $url';
    }
  }

  void showSnackBar({
    required BuildContext context,
    required String text,
  }) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          padding: const EdgeInsets.all(15),
          content: Center(
            child: Text(
              text,
              style: AppFonts.smallStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ),
        ),
      );
  }

  String errorIdentifier(int statusCode) {
    switch (statusCode) {
      case 400:
        return '$statusCode \n Bad Request. The request was unacceptable, often due to missing a required parameter.';
      case 401:
        return '$statusCode \n Unauthorized. Invalid Access Token.';
      case 403:
        return '$statusCode \n Forbidden. Missing permissions to perform request.';
      case 404:
        return '$statusCode \n Not Found. The requested resource doesn’t exist.';
      case 500:
        return '$statusCode \n Something went wrong on our end.';
      case 503:
        return '$statusCode \n Something went wrong on our end.';
      default:
        return 'Something went wrong...';
    }
  }
}

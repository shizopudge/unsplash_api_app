import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/fonts.dart';

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

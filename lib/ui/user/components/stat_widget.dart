import 'package:flutter/material.dart';

import '../../../core/fonts.dart';

class StatWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const StatWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 40,
          ),
          Text(
            text,
            style: AppFonts.defaultStyle.copyWith(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}

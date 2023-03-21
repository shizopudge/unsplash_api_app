import 'package:flutter/material.dart';

class OpacityAnimatedIcon extends StatelessWidget {
  const OpacityAnimatedIcon({
    super.key,
    required this.notifier,
    required this.icon,
    required this.color,
    required this.size,
  });

  final ValueNotifier<double> notifier;
  final IconData icon;
  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: (context, opacity, child) => AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(
          milliseconds: 1000,
        ),
        child: Icon(
          icon,
          color: Colors.red.shade900,
          size: size,
        ),
      ),
    );
  }
}

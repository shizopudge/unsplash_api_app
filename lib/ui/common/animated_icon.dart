import 'package:flutter/material.dart';

class OpacityAnimatedIcon extends StatelessWidget {
  const OpacityAnimatedIcon({
    super.key,
    required this.notifier,
    required this.icon,
    required this.color,
  });

  final ValueNotifier<double> notifier;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: notifier,
      builder: (context, opacity, child) => AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(
          milliseconds: 750,
        ),
        child: Icon(
          icon,
          color: Colors.red.shade900,
          size: 50,
        ),
      ),
    );
  }
}

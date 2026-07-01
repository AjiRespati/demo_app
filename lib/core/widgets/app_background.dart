import 'package:flutter/material.dart';

import 'package:demo_app/core/theme/app_theme_extention.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppThemeExtension>()!;

    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.backgroundStart,
            theme.backgroundMid,
            theme.backgroundEnd,
          ],
        ),
      ),
      child: CustomPaint(
        painter: _BackdropPainter(
          primary: Theme.of(context).colorScheme.primary,
          secondary: Theme.of(context).colorScheme.secondary,
          tertiary: Theme.of(context).colorScheme.tertiary,
        ),
        child: const SizedBox.expand(),
      ),
    );
  }
}

class _BackdropPainter extends CustomPainter {
  const _BackdropPainter({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..style = PaintingStyle.fill;

    paint.color = primary.withValues(alpha: 0.12);
    canvas.drawPath(
      Path()
        ..moveTo(0, size.height * 0.12)
        ..lineTo(size.width, 0)
        ..lineTo(size.width, size.height * 0.18)
        ..lineTo(0, size.height * 0.38)
        ..close(),
      paint,
    );

    paint.color = secondary.withValues(alpha: 0.14);
    canvas.drawPath(
      Path()
        ..moveTo(size.width * 0.08, size.height)
        ..lineTo(size.width, size.height * 0.68)
        ..lineTo(size.width, size.height)
        ..close(),
      paint,
    );

    paint.color = tertiary.withValues(alpha: 0.10);
    canvas.drawPath(
      Path()
        ..moveTo(0, size.height * 0.74)
        ..lineTo(size.width * 0.56, size.height * 0.52)
        ..lineTo(size.width * 0.92, size.height)
        ..lineTo(0, size.height)
        ..close(),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant _BackdropPainter oldDelegate) {
    return oldDelegate.primary != primary ||
        oldDelegate.secondary != secondary ||
        oldDelegate.tertiary != tertiary;
  }
}

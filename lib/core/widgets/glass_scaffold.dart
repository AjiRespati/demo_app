import 'package:flutter/material.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart' as liquid;

import '../extensions/extensions.dart';
import '../tokens/tokens.dart';

/// Reusable application scaffold backed by liquid_glass_widgets.
class GlassScaffold extends StatelessWidget {
  const GlassScaffold({
    super.key,
    required this.title,
    required this.body,
    this.background,
    this.contentMaxWidth,
    this.padding,
  });

  /// Text displayed in the glass app bar.
  final String title;

  /// Main page content.
  final Widget body;

  /// Optional background override for screens with a custom backdrop.
  final Widget? background;

  /// Optional max content width override.
  final double? contentMaxWidth;

  /// Optional page padding override.
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return liquid.GlassScaffold(
      background: background ?? const _GlassBackground(),
      appBar: liquid.GlassAppBar(title: Text(title)),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: contentMaxWidth ?? context.responsive.contentWidth,
          ),
          child: Padding(
            padding: padding ?? EdgeInsets.all(context.responsive.pagePadding),
            child: body,
          ),
        ),
      ),
    );
  }
}

class _GlassBackground extends StatelessWidget {
  const _GlassBackground();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            context.colorScheme.surface,
            context.colorScheme.surfaceContainerHighest,
            context.colorScheme.primaryContainer,
          ],
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: AppSpacing.xxxl * AppGlass.backgroundAccentSizeFactor,
          height: AppSpacing.xxxl * AppGlass.backgroundAccentSizeFactor,
          decoration: BoxDecoration(
            color: context.colorScheme.secondary.withValues(
              alpha: GlassOpacity.medium,
            ),
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}

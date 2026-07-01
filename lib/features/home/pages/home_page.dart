import 'package:flutter/material.dart';

import '../../../core/extensions/extensions.dart';
import '../../../core/responsive/responsive.dart';
import '../../../core/tokens/tokens.dart';
import '../../../core/widgets/widgets.dart';

/// Foundation showcase page for Sprint 001.
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassScaffold(
      title: 'Glass Admin Kit',
      body: ResponsiveBuilder(
        mobile: (context) =>
            const _FoundationContent(columns: AppBreakpoints.mobileColumns),
        tablet: (context) =>
            const _FoundationContent(columns: AppBreakpoints.tabletColumns),
        desktop: (context) =>
            _FoundationContent(columns: context.responsive.columns),
      ),
    );
  }
}

class _FoundationContent extends StatelessWidget {
  const _FoundationContent({required this.columns});

  final int columns;

  @override
  Widget build(BuildContext context) {
    final items = <_FoundationItem>[
      const _FoundationItem('Bootstrap', Icons.rocket_launch_outlined),
      const _FoundationItem('Theme', Icons.palette_outlined),
      const _FoundationItem('Tokens', Icons.grid_view_outlined),
      const _FoundationItem('Responsive', Icons.devices_outlined),
      const _FoundationItem('Extensions', Icons.extension_outlined),
      const _FoundationItem('Glass Scaffold', Icons.layers_outlined),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Foundation', style: context.textTheme.headlineLarge),
        const SizedBox(height: AppSpacing.sm),
        Text(
          'Sprint 001 core systems are wired and ready for components.',
          style: context.textTheme.bodyLarge,
        ),
        const SizedBox(height: AppSpacing.xl),
        GridView.builder(
          shrinkWrap: true,
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: AppSpacing.md,
            mainAxisSpacing: AppSpacing.md,
            childAspectRatio: context.responsive.isMobile
                ? AppLayout.foundationTileMobileAspectRatio
                : AppLayout.foundationTileDesktopAspectRatio,
          ),
          itemBuilder: (context, index) {
            final item = items[index];

            return _FoundationTile(item: item);
          },
        ),
      ],
    );
  }
}

class _FoundationTile extends StatelessWidget {
  const _FoundationTile({required this.item});

  final _FoundationItem item;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.surface.withValues(alpha: GlassOpacity.high),
        borderRadius: BorderRadius.circular(AppRadius.lg),
        border: Border.all(color: context.colorScheme.outlineVariant),
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.md),
        child: Row(
          children: <Widget>[
            Icon(item.icon, color: context.colorScheme.primary),
            const SizedBox(width: AppSpacing.md),
            Expanded(
              child: Text(item.label, style: context.textTheme.titleMedium),
            ),
          ],
        ),
      ),
    );
  }
}

class _FoundationItem {
  const _FoundationItem(this.label, this.icon);

  final String label;
  final IconData icon;
}

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

import 'package:demo_app/core/constants/app_metadata.dart';
import 'package:demo_app/core/extensions/theme_context.dart';
import 'package:demo_app/core/responsive/responsive.dart';
import 'package:demo_app/core/tokens/app_tokens.dart';
import 'package:demo_app/core/widgets/app_background.dart';

class ShowcasePage extends StatelessWidget {
  const ShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GlassScaffold(
      background: const AppBackground(),
      statusBarStyle: GlassStatusBarStyle.auto,
      appBar: GlassAppBar(
        centerTitle: false,
        title: Text(
          AppMetadata.name,
          style: context.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: const [
          _ToolbarButton(icon: Icons.search_rounded, label: 'Search'),
          _ToolbarButton(
            icon: Icons.notifications_none_rounded,
            label: 'Alerts',
          ),
        ],
      ),
      body: const _ShowcaseBody(),
    );
  }
}

class _ShowcaseBody extends StatelessWidget {
  const _ShowcaseBody();

  @override
  Widget build(BuildContext context) {
    final info = context.responsive;

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        AppSpacing.md,
        AppSpacing.lg,
        AppSpacing.md,
        AppSpacing.xxxl,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: AppBreakpoints.maxContentWidth,
          ),
          child: info.isDesktop
              ? const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: 264, child: _Sidebar()),
                    Gap(AppSpacing.lg),
                    Expanded(child: _DashboardContent()),
                  ],
                )
              : const _DashboardContent(),
        ),
      ),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  const _DashboardContent();

  @override
  Widget build(BuildContext context) {
    final info = context.responsive;
    final metricColumns = info.isMobile ? 1 : 3;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const _HeroPanel(),
        const Gap(AppSpacing.lg),
        GridView.count(
          crossAxisCount: metricColumns,
          crossAxisSpacing: AppSpacing.md,
          mainAxisSpacing: AppSpacing.md,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          childAspectRatio: info.isMobile ? 2.5 : 1.45,
          children: const [
            _MetricTile(
              label: 'Revenue',
              value: '\$128.4K',
              delta: '+18.2%',
              icon: Icons.trending_up_rounded,
            ),
            _MetricTile(
              label: 'Active Users',
              value: '24,892',
              delta: '+7.4%',
              icon: Icons.group_rounded,
            ),
            _MetricTile(
              label: 'Conversion',
              value: '8.7%',
              delta: '+2.1%',
              icon: Icons.bolt_rounded,
            ),
          ],
        ),
        const Gap(AppSpacing.lg),
        Wrap(
          spacing: AppSpacing.md,
          runSpacing: AppSpacing.md,
          children: const [_RoadmapPanel(), _ActivityPanel()],
        ),
      ],
    );
  }
}

class _HeroPanel extends StatelessWidget {
  const _HeroPanel();

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      useOwnLayer: true,
      padding: const EdgeInsets.all(AppSpacing.xl),
      shape: const LiquidRoundedSuperellipse(borderRadius: AppRadius.lg),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isCompact = constraints.maxWidth < AppBreakpoints.mobile;

          return Flex(
            direction: isCompact ? Axis.vertical : Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (isCompact)
                const _HeroCopy()
              else
                const Expanded(child: _HeroCopy()),
              Gap(isCompact ? AppSpacing.lg : AppSpacing.xl),
              const _ReleaseBadge(),
            ],
          );
        },
      ),
    );
  }
}

class _HeroCopy extends StatelessWidget {
  const _HeroCopy();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Foundation',
          style: context.textTheme.displaySmall?.copyWith(
            fontWeight: FontWeight.w800,
            letterSpacing: 0,
          ),
        ),
        const Gap(AppSpacing.sm),
        Text(
          'Reusable Flutter admin framework with liquid glass surfaces, responsive structure, and token-led design.',
          style: context.textTheme.titleMedium?.copyWith(
            color: context.colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

class _ReleaseBadge extends StatelessWidget {
  const _ReleaseBadge();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.surface.withValues(
          alpha: AppOpacity.overlay,
        ),
        borderRadius: BorderRadius.circular(AppRadius.sm),
        border: Border.all(color: context.colorScheme.outlineVariant),
      ),
      child: const Padding(
        padding: EdgeInsets.all(AppSpacing.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('v${AppMetadata.version}'),
            Gap(AppSpacing.xs),
            Text(AppMetadata.codename),
          ],
        ),
      ),
    );
  }
}

class _MetricTile extends StatelessWidget {
  const _MetricTile({
    required this.label,
    required this.value,
    required this.delta,
    required this.icon,
  });

  final String label;
  final String value;
  final String delta;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      useOwnLayer: true,
      padding: const EdgeInsets.all(AppSpacing.lg),
      shape: const LiquidRoundedSuperellipse(borderRadius: AppRadius.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: context.colorScheme.primary),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label, style: context.textTheme.labelLarge),
              const Gap(AppSpacing.xs),
              Text(
                value,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                delta,
                style: context.textTheme.labelMedium?.copyWith(
                  color: context.colorScheme.secondary,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Sidebar extends StatelessWidget {
  const _Sidebar();

  @override
  Widget build(BuildContext context) {
    return GlassCard(
      useOwnLayer: true,
      padding: const EdgeInsets.all(AppSpacing.md),
      shape: const LiquidRoundedSuperellipse(borderRadius: AppRadius.lg),
      child: const Column(
        children: [
          _NavItem(
            icon: Icons.dashboard_rounded,
            label: 'Dashboard',
            active: true,
          ),
          _NavItem(icon: Icons.people_alt_rounded, label: 'Users'),
          _NavItem(icon: Icons.analytics_rounded, label: 'Analytics'),
          _NavItem(icon: Icons.settings_rounded, label: 'Settings'),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    this.active = false,
  });

  final IconData icon;
  final String label;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.xs),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: active
              ? context.colorScheme.primary.withValues(alpha: 0.12)
              : context.colorScheme.surface.withValues(alpha: 0),
          borderRadius: BorderRadius.circular(AppRadius.sm),
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Row(
            children: [
              Icon(icon, size: 20),
              const Gap(AppSpacing.sm),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoadmapPanel extends StatelessWidget {
  const _RoadmapPanel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.responsive.isMobile ? double.infinity : 420,
      child: GlassCard(
        useOwnLayer: true,
        padding: const EdgeInsets.all(AppSpacing.lg),
        shape: const LiquidRoundedSuperellipse(borderRadius: AppRadius.lg),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _PanelTitle(title: 'Milestones'),
            Gap(AppSpacing.md),
            _Milestone(name: 'Prism', value: 'Theme System'),
            _Milestone(name: 'Aurora', value: 'Responsive Engine'),
            _Milestone(name: 'Crystal', value: 'Glass Components'),
          ],
        ),
      ),
    );
  }
}

class _ActivityPanel extends StatelessWidget {
  const _ActivityPanel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.responsive.isMobile ? double.infinity : 420,
      child: GlassCard(
        useOwnLayer: true,
        padding: const EdgeInsets.all(AppSpacing.lg),
        shape: const LiquidRoundedSuperellipse(borderRadius: AppRadius.lg),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _PanelTitle(title: 'Sprint 001'),
            Gap(AppSpacing.md),
            _Milestone(name: 'GAK-001', value: 'Project Bootstrap'),
            _Milestone(name: 'GAK-002', value: 'Theme Foundation'),
            _Milestone(name: 'GAK-007', value: 'App Scaffold'),
          ],
        ),
      ),
    );
  }
}

class _PanelTitle extends StatelessWidget {
  const _PanelTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: context.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

class _Milestone extends StatelessWidget {
  const _Milestone({required this.name, required this.value});

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
      child: Row(
        children: [
          Icon(
            Icons.check_circle_rounded,
            color: context.colorScheme.secondary,
          ),
          const Gap(AppSpacing.sm),
          Expanded(child: Text(name)),
          Text(
            value,
            style: context.textTheme.bodyMedium?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}

class _ToolbarButton extends StatelessWidget {
  const _ToolbarButton({required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GlassButton(
      icon: Icon(icon),
      label: label,
      width: 44,
      height: 44,
      stretch: 0.12,
      onTap: () {},
    );
  }
}

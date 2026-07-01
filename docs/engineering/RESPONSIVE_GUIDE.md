# Responsive Guide

Responsive behavior is part of the Glass Admin Kit foundation. It is not a page-level afterthought.

## Breakpoint Philosophy

Glass Admin Kit uses three primary breakpoints:

- Mobile: width below `AppBreakpoints.mobile`
- Tablet: width from `AppBreakpoints.mobile` up to `AppBreakpoints.desktop`
- Desktop: width at or above `AppBreakpoints.desktop`

The responsive layer owns viewport reads. Features should ask the responsive layer what to do instead of reading screen size directly.

## ResponsiveInfo

Use `ResponsiveInfo` when layout logic needs breakpoint values.

```dart
final responsive = context.responsive;

if (responsive.isDesktop) {
  return const DesktopLayout();
}
```

Common values:

- `context.responsive.isMobile`
- `context.responsive.isTablet`
- `context.responsive.isDesktop`
- `context.responsive.columns`
- `context.responsive.contentWidth`
- `context.responsive.pagePadding`

## ResponsiveBuilder

Use `ResponsiveBuilder` when the widget tree differs by breakpoint.

```dart
ResponsiveBuilder(
  mobile: (context) => const MobileContent(),
  tablet: (context) => const TabletContent(),
  desktop: (context) => const DesktopContent(),
)
```

If a tablet or desktop builder is omitted, the next smaller builder is used.

## Layout Best Practices

- Keep content constrained with `context.responsive.contentWidth`.
- Use `context.responsive.pagePadding` for page-level padding.
- Use `context.responsive.columns` for grid count.
- Keep widget dimensions stable with tokens.
- Prefer composition over large conditional blocks inside one build method.
- Keep feature pages readable by moving repeated responsive sections into private widgets.

## Examples

Grid layout:

```dart
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: context.responsive.columns,
    crossAxisSpacing: AppSpacing.md,
    mainAxisSpacing: AppSpacing.md,
  ),
  itemBuilder: (context, index) => const ItemTile(),
)
```

Page padding:

```dart
Padding(
  padding: EdgeInsets.all(context.responsive.pagePadding),
  child: const PageContent(),
)
```

## Do Not Do This

Do not read `MediaQuery` directly inside feature widgets.

```dart
final width = MediaQuery.of(context).size.width;
```

Do not hardcode breakpoint values in pages.

```dart
if (width > 900) {
  return const DesktopContent();
}
```

Do not duplicate breakpoint logic in multiple widgets. Add it to `ResponsiveInfo` when it becomes a shared rule.

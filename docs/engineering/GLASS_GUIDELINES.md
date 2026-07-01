# Glass Guidelines

Glass is part of the Glass Admin Kit identity, but it should be used with restraint. The goal is hierarchy, not decoration.

## GlassScaffold

Use `GlassScaffold` as the page-level glass entry point.

`GlassScaffold` owns:

- liquid glass package integration
- page background
- glass app bar
- content width constraint
- responsive page padding

Feature pages should import `GlassScaffold` from `core/widgets`, not from `liquid_glass_widgets`.

## GlassContainer

`GlassContainer` is a low-level package concept. Use it only inside core abstractions or future approved component work.

Feature code should not reach for package containers directly during Sprint 001 hardening.

## GlassCard

`GlassCard` is planned for Sprint 002. Do not introduce it during Sprint 001 hardening.

When implemented, it should:

- live in `core/widgets`
- use theme and token values
- hide package-specific details from features
- expose a small, stable API

## Glass Surfaces

Glass surfaces should follow these rules:

- blur comes from `AppBlur` or `AppGlassTheme`
- opacity comes from `GlassOpacity` or `AppGlassTheme`
- radius comes from `AppRadius` or `AppGlassTheme`
- thickness comes from `AppGlass`
- colors come from `ColorScheme` or theme extensions

## Layering Philosophy

Glass belongs in navigation chrome, page shells, floating controls, and intentionally elevated surfaces.

Opaque surfaces are still preferred for dense content, tables, forms, and repeated data cards unless the design system explicitly calls for glass.

Avoid stacking glass inside glass. Nested glass can reduce readability and increase rendering cost.

## Blur Consistency

Do not tune blur per widget with raw numbers.

Use existing tokens:

- `AppBlur.sm`
- `AppBlur.md`
- `AppBlur.lg`
- `AppBlur.xl`

If a new blur level is needed, add it to the token layer through review.

## Opacity Consistency

Do not use raw alpha values.

Use existing tokens:

- `GlassOpacity.low`
- `GlassOpacity.medium`
- `GlassOpacity.high`

Opacity should communicate hierarchy, not create decoration for its own sake.

## When Not To Use Glass

Do not use glass for:

- long tables
- dense forms
- high-frequency list rows
- error messages that need strong contrast
- surfaces where readability is more important than depth
- backgrounds that already contain complex imagery

When in doubt, use a normal Material surface and reserve glass for the page shell or navigation layer.

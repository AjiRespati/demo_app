# Engineering Principles

Glass Admin Kit is built with craftsmanship, not haste.

This document defines project-wide rules for implementation and review. These rules apply to every sprint unless an Architecture Decision Record explicitly changes them.

## Core Rules

- Never hardcode spacing. Use `AppSpacing`.
- Never hardcode radius. Use `AppRadius`.
- Never hardcode colors. Use `ThemeData`, `ColorScheme`, `AppColors`, or a theme extension.
- Never hardcode blur values. Use `AppBlur`.
- Never hardcode opacity values. Use `GlassOpacity`.
- Prefer design tokens for every visual value.
- Prefer semantic values over visual names.
- Prefer composition over inheritance.
- Keep public APIs stable once they are introduced.
- Add DartDoc for public APIs.

## Architecture Rules

- Keep the feature-first structure.
- Feature code may depend on `core`.
- `core` must not depend on features.
- Shared code belongs in `core` or `shared`, not inside a random feature.
- Do not introduce new architectural layers unless the handbook or an ADR requires them.
- Public widgets should expose project-level abstractions, not package-specific implementation details.

## Responsive Rules

- Never use `MediaQuery` directly inside features.
- Use `ResponsiveInfo` for layout decisions.
- Use `ResponsiveBuilder` for breakpoint-specific widget composition.
- `MediaQuery` is allowed only inside the responsive layer or framework integration code.
- Keep responsive behavior predictable across mobile, tablet, and desktop.

## Glass Rules

- All glass widgets must go through project abstraction layers.
- Feature code should use `core/widgets` abstractions such as `GlassScaffold`.
- Package-backed glass implementation details must stay behind core widgets.
- Blur, opacity, thickness, and radius must come from tokens or theme extensions.
- Do not nest glass surfaces without a clear design reason.

## API Rules

- Constructor order should be `super.key`, required parameters, then optional parameters.
- Use `const` constructors where possible.
- Prefer named parameters for public widgets.
- Keep optional parameters nullable unless a default value is part of the API contract.
- Do not rename public fields casually after they are introduced.
- Avoid exposing third-party package types through app feature APIs.

## Review Checklist

- Does the change use tokens for visual values?
- Does feature code avoid direct `MediaQuery` usage?
- Does the code preserve feature-first boundaries?
- Are public APIs documented and stable?
- Does the implementation remain buildable on web and Android?
- Is the change limited to the current sprint scope?

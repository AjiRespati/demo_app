# Glass Admin Kit

> Design System Documentation

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Design System |
| Version | Checkpoint 001 |
| Project Version | v0.0.1 |
| Codename | Foundation |
| Status | Active Development |
| Last Updated | 2026-06-30 |

---

# Table of Contents

1. Purpose
2. Design Philosophy
3. Design Principles
4. Layout System
5. Responsive System
6. Spacing System
7. Radius System
8. Elevation
9. Blur
10. Opacity
11. Color System
12. Typography
13. Motion
14. Icons
15. Component Rules
16. Glass Components
17. Accessibility
18. Do & Don't
19. Future Evolution

---

# Purpose

Design System memastikan seluruh aplikasi memiliki tampilan yang:

- konsisten
- modern
- mudah dikembangkan
- mudah dipelihara
- mudah digunakan

Setiap halaman harus terasa berasal dari sistem yang sama.

Bukan kumpulan widget yang kebetulan terlihat mirip.

---

# Design Philosophy

Glass Admin Kit mengadopsi filosofi:

> Less Decoration. More Hierarchy.

UI modern tidak dibangun dengan banyak warna.

UI modern dibangun dengan:

- spacing
- hierarchy
- typography
- motion
- transparency
- consistency

---

# Core Principles

## Token First

Seluruh nilai visual berasal dari token.

Contoh:

✔

```dart
AppSpacing.lg
```

✗

```dart
EdgeInsets.all(19)
```

---

## Consistency First

Jika dua halaman memiliki fungsi yang sama,

maka tampilannya harus sama.

---

## Reusable First

Jika sebuah UI muncul lebih dari satu kali,

buat menjadi reusable component.

---

## Responsive by Default

Semua widget harus mampu beradaptasi.

Responsive bukan fitur tambahan.

Responsive adalah standar.

---

# Layout System

Menggunakan **8-point Grid System**.

Semua ukuran mengikuti kelipatan 4 atau 8.

Contoh:

```
4
8
12
16
20
24
32
40
48
64
80
96
```

Tidak menggunakan angka acak.

---

# Content Width

| Device | Max Width |
|---------|----------:|
| Mobile | Full |
| Tablet | 960 |
| Desktop | 1440 |

Konten utama berada di tengah.

---

# Responsive Breakpoints

| Device | Width |
|---------|------:|
| Mobile | <768 |
| Tablet | 768–1199 |
| Desktop | >=1200 |

Gunakan:

```dart
context.responsive
```

Bukan MediaQuery langsung.

---

# Spacing System

Semua spacing berasal dari:

```dart
AppSpacing
```

| Token | Value |
|--------|-------|
| xs | 4 |
| sm | 8 |
| md | 16 |
| lg | 24 |
| xl | 32 |
| xxl | 48 |
| xxxl | 64 |

Gunakan Gap.

Contoh:

```dart
Gap(AppSpacing.lg)
```

---

# Radius System

Gunakan:

```dart
AppRadius
```

| Token | Value |
|--------|-------|
| xs | 4 |
| sm | 8 |
| md | 12 |
| lg | 16 |
| xl | 24 |
| pill | 999 |

Semua card menggunakan token.

Tidak boleh:

```dart
BorderRadius.circular(17)
```

---

# Elevation

Glass UI menggunakan elevation seminimal mungkin.

Token:

```dart
AppElevation.none

AppElevation.low

AppElevation.medium

AppElevation.high
```

Shadow digunakan untuk hierarchy,

bukan dekorasi.

---

# Blur

Blur adalah identitas utama Glass Admin Kit.

Token:

```dart
AppBlur.none

AppBlur.sm

AppBlur.md

AppBlur.lg

AppBlur.xl
```

Widget tidak menentukan blur sendiri.

---

# Opacity

Token:

```dart
GlassOpacity.low

GlassOpacity.medium

GlassOpacity.high
```

Tidak menggunakan angka literal.

---

# Color System

Seluruh warna berasal dari Theme.

Widget tidak mengetahui warna.

Layer:

```
Material

↓

AppTheme

↓

GlassTheme

↓

Widget
```

---

## Semantic Colors

Gunakan nama berdasarkan fungsi.

Contoh:

```
primary

secondary

surface

background

success

warning

error

info
```

Bukan:

```
blue

red

green
```

---

# Typography

Menggunakan Google Fonts.

Hierarchy:

| Style | Usage |
|--------|------|
| Display | Hero |
| Headline | Page Title |
| Title | Card Title |
| Body | Content |
| Label | Button |

Gunakan:

```dart
context.textTheme
```

---

# Motion

Animasi harus:

- halus
- singkat
- konsisten

Default:

```dart
AppDurations.fast

AppDurations.medium

AppDurations.slow
```

Curve:

```dart
Curves.easeOutCubic
```

menjadi default.

---

# Icons

Gunakan Material Symbols.

Prioritas:

- outlined
- rounded

Ukuran:

| Size | Usage |
|------|------|
| 16 | Label |
| 20 | Button |
| 24 | Default |
| 32 | Hero |

---

# Glass Components

Komponen utama:

```
GlassCard

GlassButton

GlassSidebar

GlassSection

GlassScaffold

GlassDialog

GlassAvatar

GlassBadge

GlassSearchField

GlassStatCard
```

Semua komponen menggunakan token.

---

# GlassCard Rules

GlassCard:

- tidak mengetahui warna
- tidak mengetahui blur
- tidak mengetahui radius

Semua berasal dari Theme.

Contoh:

```dart
GlassCard(
    child: ...
)
```

---

# GlassButton Rules

Button memiliki tiga varian.

```
Primary

Secondary

Ghost
```

Semua memiliki tinggi yang konsisten.

---

# GlassSection

Digunakan sebagai pembungkus section.

Contoh:

```
Dashboard

↓

GlassSection

↓

GlassCard

↓

Content
```

---

# Dashboard Rules

Dashboard terdiri dari section.

Bukan kumpulan widget bebas.

Contoh:

```
Header

↓

Statistics

↓

Charts

↓

Tables

↓

Activity
```

---

# Empty State

Seluruh empty state harus memiliki:

- icon
- title
- description
- optional action

---

# Loading State

Gunakan skeleton loading.

Hindari spinner penuh layar jika data masih dapat diperkirakan.

---

# Error State

Error harus menjelaskan:

- apa yang terjadi
- apa yang dapat dilakukan pengguna

---

# Accessibility

Minimum touch target:

48 px.

Kontras mengikuti Material 3.

Mendukung:

- keyboard
- screen reader
- text scaling

---

# Responsive Rules

Desktop:

gunakan sidebar.

Tablet:

sidebar dapat collapse.

Mobile:

gunakan drawer.

---

# Do

✔ gunakan token

✔ gunakan reusable widget

✔ gunakan semantic color

✔ gunakan spacing system

✔ gunakan typography hierarchy

---

# Don't

✗ hardcoded color

✗ hardcoded radius

✗ hardcoded spacing

✗ hardcoded duration

✗ widget lebih dari satu tanggung jawab

---

# Future Evolution

Design System akan berkembang dengan:

- Motion Library
- Animation Tokens
- Glass Presets
- Theme Presets
- Icon Pack
- Component Catalog
- Figma Design Kit

---

# Revision History

## Checkpoint 001

- Initial Design Philosophy
- Initial Token System
- Initial Layout Rules
- Initial Typography Rules
- Initial Glass Components
- Initial Accessibility Rules

# Glass Admin Kit

> Project Structure Specification

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Project Structure |
| Version | Checkpoint 001 |
| Project Version | v0.0.1 |
| Codename | Foundation |
| Status | Active Development |
| Last Updated | 2026-06-30 |

---

# Purpose

Dokumen ini mendefinisikan struktur folder resmi Glass Admin Kit.

Tujuan utama:

- konsisten
- mudah dipahami
- scalable
- mudah dicari
- mudah dipindahkan menjadi package apabila diperlukan

Jika implementasi berbeda dengan dokumen ini, maka implementasi harus diperbaiki atau dokumen diperbarui melalui ADR.

---

# Design Principles

Project mengikuti prinsip:

- Feature First
- Core Foundation
- Shared Resource
- Small Module
- High Cohesion
- Low Coupling

---

# Root Structure

```
glass_admin_kit/

├── android/
├── ios/
├── linux/
├── macos/
├── web/
├── windows/
│
├── assets/
├── docs/
├── lib/
├── test/
│
├── analysis_options.yaml
├── pubspec.yaml
├── README.md
└── CHANGELOG.md
```

---

# Assets

```
assets/

    fonts/

    icons/

    illustrations/

    images/

    logos/

    animations/

    mock/
```

## Rules

Images dipisahkan berdasarkan kategori.

Jangan mencampur seluruh asset dalam satu folder.

---

# Documentation

```
docs/

01_ENGINEERING_HANDBOOK.md

02_ARCHITECTURE.md

03_DESIGN_SYSTEM.md

04_ROADMAP.md

05_CHANGELOG.md

06_DECISIONS.md

07_PROJECT_STRUCTURE.md

08_CODE_STYLE.md

09_GIT_WORKFLOW.md

10_BACKLOG.md
```

---

# lib

```
lib/

app/

core/

features/

shared/

main.dart
```

Folder lain tidak diperbolehkan berada di level ini tanpa ADR.

---

# app

```
app/

app.dart

bootstrap.dart

router.dart
```

## Responsibility

- bootstrap
- routing
- initialization
- application lifecycle

Tidak boleh berisi business logic.

---

# core

Core adalah fondasi project.

```
core/

constants/

extensions/

responsive/

services/

theme/

tokens/

utils/

widgets/
```

Seluruh feature boleh menggunakan core.

Core tidak boleh bergantung pada feature.

---

# Core / Tokens

```
tokens/

colors/

spacing/

radius/

duration/

opacity/

blur/

elevation/

breakpoints/

typography/
```

Semua design value berasal dari token.

---

# Core / Theme

```
theme/

app_theme.dart

glass_theme.dart

light_theme.dart

dark_theme.dart

theme_extensions.dart
```

---

# Core / Responsive

```
responsive/

responsive.dart

responsive_info.dart

responsive_builder.dart

responsive_extension.dart
```

---

# Core / Widgets

```
widgets/

glass_card.dart

glass_button.dart

glass_scaffold.dart

glass_section.dart

glass_sidebar.dart

glass_dialog.dart

glass_loading.dart
```

Widget di sini bersifat reusable.

Tidak mengandung business logic.

---

# Features

```
features/

dashboard/

auth/

users/

products/

settings/
```

Setiap feature memiliki struktur yang sama.

---

# Feature Structure

Contoh:

```
dashboard/

models/

repositories/

providers/

pages/

widgets/
```

---

# Models

```
models/
```

Berisi immutable model.

Tidak mengetahui repository.

---

# Repositories

```
repositories/
```

Berisi pengambilan data.

Tidak mengetahui UI.

---

# Providers

```
providers/
```

Menghubungkan repository dengan UI.

Menggunakan Riverpod.

---

# Pages

```
pages/
```

Screen utama.

Tidak menyimpan business logic.

---

# Widgets

```
widgets/
```

Widget khusus feature.

Jika widget digunakan lintas feature,

pindahkan ke:

```
core/widgets
```

---

# Shared

```
shared/

models/

enums/

extensions/

mixins/
```

Digunakan apabila lebih dari satu feature membutuhkan resource yang sama.

---

# Test

```
test/

core/

features/

golden/

helpers/
```

Target jangka panjang:

- unit test
- widget test
- golden test

---

# Naming Convention

Folder:

```
snake_case
```

File:

```
snake_case.dart
```

Class:

```
PascalCase
```

Variable:

```
camelCase
```

Constant:

```
camelCase
```

Private:

diawali "_"

---

# Barrel Export

Direkomendasikan.

Contoh:

```
core/theme/theme.dart

export 'app_theme.dart';

export 'glass_theme.dart';

export 'light_theme.dart';

export 'dark_theme.dart';
```

Hal ini mengurangi jumlah import yang panjang.

---

# Dependency Rules

Allowed

```
Feature

↓

Core
```

Allowed

```
Feature

↓

Shared
```

Forbidden

```
Feature A

↓

Feature B
```

Forbidden

```
Core

↓

Feature
```

---

# File Size Guideline

Target maksimum:

| File | Recommended |
|------|------------:|
| Widget | < 200 lines |
| Page | < 300 lines |
| Provider | < 150 lines |
| Repository | < 250 lines |

Jika melebihi,

pertimbangkan refactor.

Ini adalah panduan, bukan aturan mutlak.

---

# Widget Composition

Disarankan:

```
DashboardPage

↓

DashboardHeader

↓

DashboardStats

↓

DashboardChart

↓

DashboardActivity
```

Bukan satu file besar.

---

# Future Structure

Ketika project berkembang:

```
features/

finance/

inventory/

notification/

analytics/

reports/
```

Struktur tidak berubah.

Hanya feature yang bertambah.

---

# Checklist

Sebelum membuat folder baru:

- Apakah sudah ada folder yang sesuai?
- Apakah benar-benar diperlukan?
- Apakah dapat ditempatkan pada feature?
- Apakah termasuk reusable?
- Apakah memerlukan ADR?

Jika jawabannya "tidak",

jangan membuat folder baru.

---

# Revision History

## Checkpoint 001

Initial Project Structure Specification.
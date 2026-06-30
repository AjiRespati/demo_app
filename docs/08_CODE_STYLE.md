# Glass Admin Kit

> Code Style Guide

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Code Style |
| Version | Checkpoint 001 |
| Project Version | v0.0.1 |
| Codename | Foundation |
| Status | Active Development |
| Last Updated | 2026-06-30 |

---

# Purpose

Dokumen ini mendefinisikan standar penulisan kode untuk seluruh Glass Admin Kit.

Tujuannya adalah:

- Konsisten
- Mudah dibaca
- Mudah direview
- Mudah dirawat
- Mudah dikembangkan

Code style adalah bagian dari kualitas engineering.

---

# Core Principles

Seluruh kode mengikuti prinsip berikut.

- Readability over cleverness
- Explicit over implicit
- Composition over inheritance
- Small file over large file
- Const whenever possible
- Reusable before duplicate

---

# Formatting

Gunakan formatter bawaan Dart.

```
dart format .
```

Tidak diperbolehkan melakukan formatting manual yang bertentangan dengan formatter.

---

# Linter

Seluruh warning harus dianggap sebagai bug.

Target:

```
flutter analyze
```

harus bersih.

---

# Naming Convention

## Folder

Gunakan:

```
snake_case
```

Contoh:

```
dashboard
user_profile
glass_widgets
```

---

## File

Gunakan:

```
snake_case.dart
```

Contoh:

```
dashboard_page.dart
glass_card.dart
app_theme.dart
```

---

## Class

Gunakan PascalCase.

```
DashboardPage

GlassCard

DashboardRepository
```

---

## Variable

Gunakan camelCase.

```
currentUser

isLoading

selectedIndex
```

---

## Constant

Gunakan lowerCamelCase untuk konstanta Dart.

```
defaultPadding

animationDuration
```

Untuk design token, gunakan nama statis di dalam kelas.

```dart
AppSpacing.md
AppRadius.lg
AppBlur.sm
```

---

# Import Order

Urutan import wajib.

1.

Flutter SDK

2.

Package

3.

Core

4.

Shared

5.

Feature

6.

Relative

Contoh:

```dart
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:glass_admin_kit/core/theme/theme.dart';

import '../../widgets/dashboard_card.dart';
```

---

# Widget Rules

Widget hanya memiliki satu tanggung jawab.

Jika widget mulai sulit dibaca,

pecah menjadi widget baru.

---

# Widget Size

Panduan:

| Widget | Recommended |
|---------|------------:|
| Widget | <200 lines |
| Page | <300 lines |

Ini bukan aturan mutlak,

tetapi indikator untuk refactor.

---

# Constructor

Selalu gunakan:

```dart
const DashboardPage({
  super.key,
});
```

Gunakan trailing comma.

---

# Build Method

Urutan:

```dart
constructor

↓

fields

↓

build()

↓

private widget

↓

helper method
```

---

# Private Widget

Gunakan private widget jika hanya digunakan dalam satu file.

```dart
class _Header extends StatelessWidget {}
```

Jika digunakan lebih dari satu file,

pindahkan ke folder widgets.

---

# Stateless First

Prioritas:

```
StatelessWidget
```

↓

```
ConsumerWidget
```

↓

```
StatefulWidget
```

↓

```
ConsumerStatefulWidget
```

Gunakan stateful hanya jika benar-benar diperlukan.

---

# Riverpod Guidelines

Provider adalah satu-satunya pintu masuk state.

UI tidak boleh memanggil repository secara langsung.

Contoh:

```
Repository

↓

Provider

↓

Widget
```

---

## Provider Naming

```dart
dashboardProvider

userProvider

settingsProvider
```

Repository:

```dart
dashboardRepositoryProvider
```

State notifier:

```dart
dashboardControllerProvider
```

Gunakan suffix yang konsisten.

---

# Repository Rules

Repository bertugas mengambil data.

Repository tidak mengetahui:

- Widget
- BuildContext
- Theme

Repository hanya mengenal data.

---

# Model Rules

Model harus immutable.

Gunakan:

```dart
const
```

Jika memungkinkan.

Model tidak memiliki business logic.

---

# Extension Rules

Gunakan extension jika:

- meningkatkan keterbacaan
- digunakan di banyak tempat

Contoh:

```dart
context.colorScheme

context.textTheme

context.responsive
```

Jangan membuat extension yang hanya dipakai satu kali.

---

# Utility Rules

Utility harus bersifat stateless.

Tidak menyimpan state global.

Jika utility mulai membutuhkan konfigurasi,

ubah menjadi service.

---

# Service Rules

Service digunakan untuk:

- Local Storage
- API Client
- Logger
- Analytics

Service tidak mengetahui UI.

---

# Theme Rules

Dilarang menggunakan:

```dart
Colors.blue

Colors.red

Colors.white
```

Gunakan:

```dart
context.colorScheme.primary
```

atau

```dart
GlassTheme.of(context)
```

---

# Design Token Rules

Seluruh angka visual berasal dari token.

Benar:

```dart
AppSpacing.lg
```

Salah:

```dart
SizedBox(height: 19)
```

---

# Responsive Rules

Jangan menggunakan:

```dart
MediaQuery.of(context)
```

langsung pada page.

Gunakan:

```dart
context.responsive
```

---

# Async Rules

Gunakan async/await.

Hindari callback bertingkat.

Contoh:

✔

```dart
final users = await repository.getUsers();
```

---

# Error Handling

Jangan menelan exception.

Salah:

```dart
catch (_) {}
```

Benar:

- log error
- tampilkan feedback
- atau rethrow jika diperlukan

---

# Comments

Komentar menjelaskan **alasan**, bukan **apa**.

Buruk:

```dart
// Increment counter
counter++;
```

Baik:

```dart
// Reset counter karena sesi pengguna telah berakhir.
counter = 0;
```

---

# DartDoc

Public API wajib memiliki DartDoc.

Contoh:

```dart
/// Displays a reusable glass card.
///
/// Used across dashboard and settings pages.
class GlassCard extends StatelessWidget {}
```

---

# TODO Policy

Gunakan format:

```dart
// TODO(aji): Implement pagination.
```

Tidak diperbolehkan:

```dart
// TODO
```

Tanpa penanggung jawab.

---

# Magic Numbers

Hindari.

Gunakan token atau constant.

---

# Boolean Naming

Gunakan:

```
isLoading

hasError

canEdit

shouldRefresh
```

Hindari:

```
loading

error

refresh
```

---

# Enum Naming

Gunakan noun.

```dart
UserRole

ThemeModeType

SidebarState
```

---

# File Organization

Urutan dalam file:

1. Imports
2. Constants
3. Class
4. Constructor
5. Fields
6. Build
7. Private methods
8. Private widgets

---

# Golden Rule

Saat membuka sebuah file, developer harus dapat memahami:

- tujuan file
- tanggung jawab file
- alur eksekusi

dalam kurang dari lima menit.

Jika tidak,

kemungkinan file terlalu kompleks.

---

# Code Review Checklist

Sebelum merge:

- [ ] Flutter Analyze bersih
- [ ] Tidak ada duplicate code
- [ ] Menggunakan Design Token
- [ ] Menggunakan Theme
- [ ] Responsive
- [ ] Const jika memungkinkan
- [ ] Provider digunakan dengan benar
- [ ] Repository tidak mengetahui UI
- [ ] Widget memiliki satu tanggung jawab
- [ ] Dokumentasi diperbarui bila diperlukan

---

# Revision History

## Checkpoint 001

- Initial coding standards
- Riverpod guidelines
- Widget guidelines
- Repository guidelines
- Theme guidelines
- Review checklist
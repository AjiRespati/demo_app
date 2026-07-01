# Glass Admin Kit

> **A modern Flutter admin framework built with craftsmanship, not haste.**

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Handbook | Engineering Handbook |
| Version | Checkpoint 001 |
| Project Version | v0.0.1 |
| Codename | Foundation |
| Status | Active Development |
| Last Updated | 2026-06-30 |

---

# Preface

Glass Admin Kit bukan sekadar demo aplikasi Flutter.

Project ini dibangun sebagai framework internal yang dapat digunakan kembali untuk membangun aplikasi Flutter modern dengan pendekatan yang konsisten, scalable, dan mudah dipelihara.

Dokumen ini merupakan sumber utama seluruh keputusan engineering pada project.

Jika suatu saat terdapat perbedaan antara implementasi kode dan dokumentasi, maka dokumentasi ini menjadi referensi pertama sebelum dilakukan perubahan.

---

# Philosophy

Glass Admin Kit dibangun berdasarkan satu filosofi sederhana.

> **Built with craftsmanship, not haste.**

Kami percaya bahwa software yang baik tidak dibangun dengan tergesa-gesa.

Software yang baik dibangun melalui keputusan-keputusan kecil yang konsisten.

Kami lebih memilih:

- satu komponen reusable daripada sepuluh widget yang mirip
- satu fondasi yang baik daripada banyak fitur
- maintainability daripada shortcut
- konsistensi daripada kreativitas yang tidak perlu

---

# Vision

Glass Admin Kit memiliki tujuan menjadi:

- Modern Flutter Admin Framework
- Internal Boilerplate
- Open Source Template
- Portfolio Showcase
- Reusable UI Kit

Project ini harus dapat digunakan kembali pada berbagai jenis aplikasi administrasi tanpa perlu memulai dari nol.

---

# Core Values

## 1. Consistency

Semua keputusan mengikuti standar yang sama.

Tidak ada style yang berubah-ubah antar halaman.

---

## 2. Reusability

Jika sebuah widget digunakan lebih dari satu kali, maka widget tersebut harus dipertimbangkan menjadi reusable component.

---

## 3. Readability

Kode harus lebih mudah dibaca daripada ditulis.

Developer lain harus dapat memahami struktur project tanpa penjelasan tambahan.

---

## 4. Simplicity

Tidak membuat abstraksi yang belum dibutuhkan.

Tidak menambahkan layer hanya karena "best practice".

---

## 5. Scalability

Seluruh keputusan harus mempertimbangkan perkembangan project hingga puluhan feature.

---

# Engineering Principles

## Theme First

Seluruh tampilan berasal dari Theme.

Widget tidak boleh menentukan warna sendiri.

Contoh yang benar:

```dart
color: context.colorScheme.primary
```

Contoh yang tidak diperbolehkan:

```dart
color: Colors.blue
```

---

## Token First

Semua angka visual harus berasal dari Design Token.

Contoh:

```dart
AppSpacing.lg

AppRadius.md

AppDurations.medium
```

Tidak diperbolehkan:

```dart
EdgeInsets.all(17)

BorderRadius.circular(21)

Duration(milliseconds: 270)
```

---

## Feature First

Struktur project mengikuti feature.

Bukan berdasarkan jenis file.

---

## Stateless First

Gunakan StatelessWidget selama memungkinkan.

Gunakan StatefulWidget hanya jika state benar-benar dimiliki widget tersebut.

---

## Const First

Gunakan const sebanyak mungkin.

---

## Composition over Inheritance

Lebih mengutamakan komposisi widget daripada inheritance.

---

# Project Structure

```
lib/

app/

core/

features/

shared/

main.dart
```

## app

Berisi bootstrap aplikasi.

- app.dart
- router.dart
- bootstrap.dart

---

## core

Berisi seluruh fondasi aplikasi.

- constants
- extensions
- responsive
- services
- theme
- utils
- widgets

---

## features

Setiap feature berdiri sendiri.

Contoh:

```
dashboard/

users/

products/

settings/

auth/
```

Setiap feature dapat memiliki:

```
models

repositories

providers

pages

widgets
```

---

# Coding Standard

## Widget Size

Widget sebaiknya memiliki satu tanggung jawab.

Jika widget mulai sulit dibaca, pecah menjadi widget baru.

---

## File Naming

Gunakan snake_case.

Contoh:

```
dashboard_page.dart

glass_card.dart
```

---

## Class Naming

Gunakan PascalCase.

Contoh:

```
DashboardPage

GlassCard
```

---

## Import Order

1. Flutter SDK

2. Third Party Packages

3. Core

4. Feature

5. Relative

---

## Constructor

Selalu gunakan:

```dart
const WidgetName({
  super.key,
});
```

---

## Build Method

Urutan yang direkomendasikan:

- constructor
- fields
- lifecycle
- build
- private widget
- helper method

---

# Development Workflow

Setiap perubahan mengikuti alur berikut.

```
Planning

↓

Documentation

↓

Implementation

↓

Analyze

↓

Build

↓

Review

↓

Commit
```

Tidak diperbolehkan langsung menambahkan fitur tanpa perencanaan.

---

# Git Convention

Commit menggunakan format:

```
GAK-001

GAK-002

GAK-003
```

Commit message mengikuti Conventional Commit.

Contoh:

```
feat(core): add responsive extension

refactor(theme): simplify glass theme

docs: update engineering handbook
```

---

# Quality Gates

Sebelum sebuah task dianggap selesai:

- flutter analyze bersih
- tidak ada warning penting
- Android build berhasil
- Web build berhasil
- responsive berjalan baik
- lint lolos
- tidak ada duplicate code yang jelas

---

# Documentation Rules

Seluruh keputusan besar harus terdokumentasi.

Jangan mengandalkan ingatan atau riwayat percakapan.

Jika terdapat perubahan arsitektur, tambahkan ke:

```
06_DECISIONS.md
```

---

# Team Agreement

Glass Admin Kit dikembangkan berdasarkan kesepakatan berikut.

- Tidak mengejar cepat selesai.
- Tidak melakukan premature optimization.
- Tidak membuat abstraksi yang belum diperlukan.
- Selalu mengutamakan maintainability.
- Selalu menjaga konsistensi coding style.
- Selalu menjaga kualitas dokumentasi.

---

# Release Strategy

Versi project berkembang secara bertahap.

```
0.0.x

Foundation
```

↓

```
0.1.x

Public Alpha
```

↓

```
0.5.x

Feature Complete
```

↓

```
1.0.0

Stable Release
```

---

# Definition of Success

Glass Admin Kit dianggap berhasil apabila:

- struktur project tetap rapi setelah puluhan feature
- mudah dipahami developer baru
- reusable component menjadi mayoritas UI
- responsive pada seluruh platform
- memiliki dokumentasi yang lengkap
- dapat digunakan kembali pada project lain

---

# Motto

> Built with craftsmanship, not haste.

> Every widget should feel intentional.

> Small commits. Big vision.

---

# Revision History

## Checkpoint 001

- Initial Engineering Handbook
- Initial Project Philosophy
- Initial Development Workflow
- Initial Coding Standard
- Initial Project Vision
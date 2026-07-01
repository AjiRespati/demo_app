# Glass Admin Kit

> Architecture Documentation

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Architecture |
| Version | Checkpoint 001 |
| Project Version | v0.0.1 |
| Codename | Foundation |
| Status | Active Development |
| Last Updated | 2026-06-30 |

---

# Table of Contents

1. Purpose
2. Architecture Overview
3. Guiding Principles
4. Project Structure
5. Feature First Architecture
6. Dependency Rules
7. Data Flow
8. Routing Flow
9. State Management
10. Shared Components
11. Responsive Architecture
12. Theme Architecture
13. Dependency Injection
14. Folder Responsibilities
15. Anti Patterns
16. Scalability Strategy
17. Future Evolution

---

# Purpose

Dokumen ini menjelaskan struktur arsitektur Glass Admin Kit.

Tujuan utama arsitektur ini adalah:

- mudah dipahami
- mudah dikembangkan
- scalable
- tidak over-engineered
- tetap mengikuti praktik Flutter modern

Glass Admin Kit **tidak menggunakan Clean Architecture penuh** karena dianggap terlalu kompleks untuk kebutuhan framework UI.

Sebagai gantinya, project menggunakan **Feature First Architecture**.

---

# Architecture Overview

```
Presentation

↓

Riverpod Provider

↓

Repository

↓

Data Source (Mock / REST API)

↓

Model
```

Setiap layer hanya mengetahui layer di bawahnya.

Tidak diperbolehkan melakukan akses lintas layer.

---

# Guiding Principles

## 1. Feature First

Seluruh kode dikelompokkan berdasarkan feature.

Bukan berdasarkan jenis file.

Contoh:

```
features/

    dashboard/

    users/

    settings/
```

Bukan:

```
pages/

widgets/

repositories/

providers/
```

---

## 2. Modular

Setiap feature harus dapat berkembang secara independen.

Idealnya sebuah feature dapat dipindahkan menjadi package tanpa perubahan besar.

---

## 3. Low Coupling

Feature tidak boleh saling bergantung secara langsung.

Jika terdapat kode yang digunakan bersama, pindahkan ke:

```
core/

atau

shared/
```

---

## 4. High Cohesion

Seluruh file dalam satu feature memiliki tanggung jawab yang sama.

---

# Project Structure

```
lib/

├── app/
│
├── core/
│
├── features/
│
├── shared/
│
└── main.dart
```

---

# app

Berisi konfigurasi aplikasi.

```
app/

    app.dart

    bootstrap.dart

    router.dart
```

Tanggung jawab:

- Theme
- Router
- Initialization
- App Lifecycle

Tidak boleh berisi business logic.

---

# core

Berisi seluruh fondasi project.

```
core/

    constants/

    extensions/

    responsive/

    services/

    theme/

    utils/

    widgets/
```

Seluruh feature boleh mengakses core.

Core **tidak boleh** mengakses feature.

---

# features

Seluruh business feature berada di sini.

Contoh:

```
dashboard/

users/

products/

settings/

auth/
```

Setiap feature memiliki struktur yang konsisten.

```
dashboard/

    models/

    repositories/

    providers/

    pages/

    widgets/
```

---

# shared

Digunakan jika terdapat sesuatu yang digunakan lintas feature tetapi bukan bagian dari core.

Contoh:

```
shared/

    models/

    enums/

    mixins/
```

---

# Dependency Rules

```
Feature

↓

Core

✓ Allowed
```

```
Feature A

↓

Feature B

✗ Not Allowed
```

Jika dua feature membutuhkan kode yang sama, pindahkan ke:

```
shared/

atau

core/
```

---

# Data Flow

Glass Admin Kit menggunakan alur data satu arah.

```
UI

↓

Provider

↓

Repository

↓

Data Source

↓

Model
```

UI **tidak pernah** memanggil repository secara langsung.

Repository **tidak pernah** mengetahui UI.

---

# Routing

Routing menggunakan GoRouter.

```
GoRouter

↓

Shell Route

↓

Feature Page
```

Seluruh route didefinisikan di:

```
app/router.dart
```

Feature hanya menyediakan page.

Feature tidak mengatur routing.

---

# State Management

Menggunakan Riverpod.

Flow:

```
Repository

↓

Provider

↓

UI
```

Provider menjadi satu-satunya pintu masuk state.

Widget tidak boleh menyimpan business state.

---

# Shared Components

Reusable widget ditempatkan pada:

```
core/widgets/
```

Contoh:

```
GlassCard

GlassButton

GlassSidebar

GlassSection

GlassScaffold
```

Widget tersebut tidak mengetahui business logic.

---

# Responsive Architecture

Responsive merupakan bagian dari arsitektur.

Bukan tambahan.

Seluruh layout menggunakan:

```
context.responsive
```

Contoh:

```dart
context.responsive.isDesktop

context.responsive.columns

context.responsive.contentWidth
```

Tidak diperbolehkan:

```dart
MediaQuery.of(context)
```

langsung di setiap page.

MediaQuery hanya boleh digunakan di layer responsive.

---

# Theme Architecture

```
Material Theme

↓

AppTheme

↓

GlassTheme

↓

Reusable Widget

↓

Page
```

Seluruh widget mengambil style dari Theme.

Tidak boleh menentukan warna sendiri.

---

# Dependency Injection

Pada tahap awal project,

Riverpod digunakan sebagai dependency injection sederhana.

Repository diberikan melalui Provider.

Contoh:

```
DashboardRepository

↓

dashboardRepositoryProvider
```

UI hanya mengenal Provider.

---

# Folder Responsibilities

## models

Berisi immutable data model.

---

## repositories

Mengelola sumber data.

Tidak mengetahui UI.

---

## providers

Menghubungkan repository dengan UI.

---

## pages

Screen utama.

---

## widgets

Widget khusus feature.

---

# Layer Responsibility Matrix

| Layer | Responsibility |
|--------|----------------|
| app | Bootstrap |
| core | Foundation |
| shared | Shared Resource |
| feature | Business Feature |
| page | UI |
| provider | State |
| repository | Data |
| model | Immutable Data |

---

# Anti Patterns

Berikut beberapa hal yang **tidak diperbolehkan**.

---

## Massive Widget

Widget ribuan baris.

Pecah menjadi widget kecil.

---

## Massive Provider

Provider melakukan semua hal.

Pisahkan responsibility.

---

## Circular Dependency

Feature saling mengakses.

Tidak diperbolehkan.

---

## Hardcoded Theme

```dart
Colors.blue
```

Tidak diperbolehkan.

---

## Magic Number

```dart
padding: EdgeInsets.all(17)
```

Tidak diperbolehkan.

Gunakan token.

---

## Business Logic di Widget

Widget hanya bertanggung jawab terhadap UI.

---

# Scalability Strategy

Saat project berkembang,

feature baru cukup ditambahkan ke:

```
features/

    finance/

    inventory/

    reports/

    notification/
```

Tanpa mengubah feature lama.

---

# Future Evolution

Target arsitektur:

Phase 1

Foundation

↓

Phase 2

Reusable Components

↓

Phase 3

Analytics Dashboard

↓

Phase 4

Authentication

↓

Phase 5

REST API

↓

Phase 6

Offline Support

↓

Phase 7

Plugin Architecture

---

# Architecture Checklist

Sebelum merge sebuah feature:

- Struktur folder konsisten
- Tidak ada circular dependency
- Provider tidak mengetahui UI
- Repository tidak mengetahui Widget
- Widget tidak mengetahui Data Source
- Theme menggunakan Design Token
- Responsive menggunakan Responsive Engine

---

# Revision History

## Checkpoint 001

- Initial Feature First Architecture
- Initial Dependency Rules
- Initial Data Flow
- Initial State Management Strategy
- Initial Routing Strategy
- Initial Scalability Plan

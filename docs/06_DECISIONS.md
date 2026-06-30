# Glass Admin Kit

> Architecture Decision Records (ADR)

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Architecture Decision Records |
| Version | Checkpoint 001 |
| Project Version | v0.0.1 |
| Codename | Foundation |
| Status | Active Development |
| Last Updated | 2026-06-30 |

---

# Purpose

Dokumen ini mencatat seluruh keputusan engineering yang bersifat jangka panjang.

ADR (Architecture Decision Record) menjawab pertanyaan:

> "Mengapa keputusan ini diambil?"

Setiap keputusan harus menjelaskan:

- Context
- Decision
- Alternatives
- Consequences

Dengan demikian, keputusan engineering tidak bergantung pada ingatan atau riwayat percakapan.

---

# Architecture Decision Records Format

Setiap ADR menggunakan struktur berikut.

```
ADR-XXX

Title

Status

Context

Decision

Alternatives

Consequences

Review
```

---

# ADR-001

## Title

Use Feature First Architecture

## Status

Accepted

## Context

Project diperkirakan akan berkembang menjadi puluhan feature.

Pendekatan berdasarkan layer (pages, widgets, repository, provider) akan semakin sulit dipelihara.

## Decision

Project menggunakan Feature First Architecture.

```
features/

    dashboard/

    auth/

    users/

    settings/
```

Setiap feature memiliki folder sendiri.

## Alternatives

### Layer First

```
pages/

widgets/

repositories/
```

Tidak dipilih.

### Clean Architecture

Tidak dipilih pada tahap awal.

Dianggap terlalu verbose.

## Consequences

### Positive

- mudah dipahami
- scalable
- feature independen

### Negative

- perlu disiplin menjaga struktur

## Review

Belum dijadwalkan.

---

# ADR-002

## Title

Use Riverpod as State Management

## Status

Accepted

## Context

Project membutuhkan state management modern.

Harus mendukung:

- testability
- dependency injection
- scalability

## Decision

Menggunakan Riverpod.

Repository diakses melalui Provider.

## Alternatives

- Provider
- Bloc
- Cubit
- GetX

Tidak dipilih.

## Consequences

### Positive

- compile-safe
- dependency injection sederhana
- mudah diuji

### Negative

- perlu memahami konsep Provider dengan baik

---

# ADR-003

## Title

Use GoRouter

## Status

Accepted

## Context

Project membutuhkan routing yang scalable.

## Decision

Seluruh routing menggunakan GoRouter.

Routing hanya berada pada:

```
app/router.dart
```

Feature hanya menyediakan page.

## Alternatives

Navigator 1

Tidak dipilih.

Navigator 2 manual

Tidak dipilih.

Auto Route

Belum diperlukan.

## Consequences

### Positive

- routing konsisten
- mudah dikembangkan
- web friendly

---

# ADR-004

## Title

Use Design Tokens

## Status

Accepted

## Context

Magic number menyebabkan inkonsistensi.

## Decision

Seluruh nilai visual menggunakan token.

Contoh:

```
AppSpacing

AppRadius

AppBlur

AppOpacity

AppDuration
```

## Alternatives

Hardcoded value.

Tidak dipilih.

## Consequences

### Positive

- konsisten
- mudah diubah
- mudah dipelihara

---

# ADR-005

## Title

Theme First

## Status

Accepted

## Context

Widget tidak boleh mengetahui implementasi warna.

## Decision

Seluruh warna berasal dari Theme.

Widget hanya meminta semantic color.

## Alternatives

Hardcoded Colors.

Tidak dipilih.

## Consequences

### Positive

- Dark Mode mudah
- Theme mudah diganti
- reusable component

---

# ADR-006

## Title

Responsive by Default

## Status

Accepted

## Context

Glass Admin Kit harus berjalan pada:

- Mobile
- Tablet
- Desktop
- Web

## Decision

Responsive menjadi bagian arsitektur.

Bukan fitur tambahan.

Semua page menggunakan:

```
context.responsive
```

MediaQuery tidak digunakan langsung pada page.

## Consequences

### Positive

- layout konsisten
- adaptive

---

# ADR-007

## Title

Reusable Components First

## Status

Accepted

## Context

Dashboard berpotensi memiliki banyak widget yang mirip.

## Decision

Widget yang digunakan lebih dari satu kali harus dipertimbangkan menjadi reusable component.

## Consequences

### Positive

- kode lebih sedikit
- UI konsisten

---

# ADR-008

## Title

Small Widget Policy

## Status

Accepted

## Context

Widget besar sulit dipelihara.

## Decision

Widget memiliki satu tanggung jawab.

Page hanya melakukan komposisi.

## Consequences

### Positive

- mudah dibaca
- mudah diuji

---

# ADR-009

## Title

Documentation First

## Status

Accepted

## Context

Percakapan AI memiliki keterbatasan konteks.

Keputusan engineering tidak boleh hilang.

## Decision

Semua keputusan besar harus terdokumentasi.

Dokumentasi menjadi sumber utama.

## Consequences

### Positive

- onboarding cepat
- tidak kehilangan konteks

---

# ADR-010

## Title

Craftsmanship over Speed

## Status

Accepted

## Context

Project tidak mengejar waktu selesai.

Target utama adalah kualitas.

## Decision

Lebih memilih:

- pondasi
- dokumentasi
- konsistensi

dibanding implementasi yang tergesa-gesa.

## Consequences

### Positive

- maintainable
- scalable
- minim refactor

### Negative

- progress awal terasa lebih lambat

---

# ADR-011

## Title

Commit in Small Increments

## Status

Accepted

## Context

Perubahan besar sulit diuji dan sulit direview.

## Decision

Seluruh pekerjaan dibagi menjadi commit kecil.

Format:

```
GAK-001

GAK-002

GAK-003
```

## Consequences

### Positive

- rollback mudah
- review mudah
- testing sederhana

---

# ADR-012

## Title

Documentation Before Implementation

## Status

Accepted

## Context

Arsitektur yang tidak terdokumentasi mudah berubah tanpa arah.

## Decision

Untuk perubahan besar:

Planning

↓

Documentation

↓

Implementation

↓

Testing

↓

Release

## Consequences

Project berkembang lebih stabil.

---

# ADR-013

## Title

Milestone-based Changelog

## Status

Accepted

## Context

Mencatat setiap commit di CHANGELOG membuat riwayat sulit dibaca.

Git sudah menjadi sumber histori teknis.

## Decision

CHANGELOG hanya diperbarui ketika milestone atau release selesai.

Commit harian hanya tercatat di Git.

## Consequences

### Positive

- CHANGELOG ringkas dan bermakna
- Release Notes lebih mudah dibuat
- Dokumentasi lebih profesional

---

# Pending Decisions

Keputusan berikut akan dibuat ketika diperlukan.

- Offline Storage
- Networking Library
- Authentication Strategy
- Dependency Injection Extension
- Plugin System
- Module System
- Testing Strategy
- CI/CD Pipeline
- Code Coverage Policy
- Release Automation

---

# Decision Lifecycle

```
Proposal

↓

Discussion

↓

Accepted

↓

Implemented

↓

Reviewed

↓

Deprecated (optional)
```

---

# Rules

Semua keputusan besar wajib memiliki ADR.

Jika implementasi berubah tetapi ADR belum diperbarui,

maka implementasi dianggap belum selesai.

---

# Revision History

## Checkpoint 001

Initial ADR created.

13 Architecture Decision Records established.
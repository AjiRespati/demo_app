# Glass Admin Kit

> Architecture Decision Records (ADR)

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Architecture Decision Records |
| Version | Checkpoint 001.1 |
| Project Version | v0.0.1 |
| Status | Active Development |
| Last Updated | 2026-07-01 |

---

# Purpose

Dokumen ini mencatat seluruh keputusan engineering yang memiliki dampak jangka panjang terhadap Glass Admin Kit.

Architecture Decision Record (ADR) menjawab pertanyaan:

> **Mengapa keputusan ini diambil?**

ADR membantu menjaga konsistensi project meskipun anggota tim, AI, atau implementasi berubah.

Seluruh keputusan besar harus terdokumentasi di sini sebelum menjadi bagian permanen dari project.

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

Superseded (optional)

↓

Deprecated (optional)
```

---

# ADR Template

Seluruh ADR menggunakan struktur berikut.

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

# Decision Rules

Semua keputusan berikut wajib memiliki ADR.

- Perubahan arsitektur
- Perubahan struktur project
- Perubahan workflow development
- Penambahan dependency utama
- Perubahan Design System
- Perubahan Release Strategy
- Perubahan Sprint Strategy

Bug fix dan refactor kecil **tidak memerlukan ADR**.

---

# Active ADR

| ADR | Title | Status |
|------|-------|--------|
| ADR-001 | Feature First Architecture | Accepted |
| ADR-002 | Riverpod | Accepted |
| ADR-003 | GoRouter | Accepted |
| ADR-004 | Design Tokens | Accepted |
| ADR-005 | Theme First | Accepted |
| ADR-006 | Responsive by Default | Accepted |
| ADR-007 | Reusable Components | Accepted |
| ADR-008 | Small Widget Policy | Accepted |
| ADR-009 | Documentation First | Accepted |
| ADR-010 | Craftsmanship over Speed | Accepted |
| ADR-011 | Small Increment Commit | Accepted |
| ADR-012 | Documentation Before Implementation | Accepted |
| ADR-013 | Milestone-based Changelog | Accepted |
| ADR-014 | Sprint-based Development | Accepted |
| ADR-015 | AI-assisted Development Workflow | Accepted |

---

# ADR-014

## Title

Sprint-based Development

---

## Status

Accepted

---

## Context

Pada awal project, setiap GAK Task diperlakukan seperti satu Sprint.

Pendekatan tersebut ternyata kurang tepat.

Task terlalu kecil untuk menghasilkan deliverable yang bermakna.

Selain itu, Sprint menjadi terlalu banyak dan sulit dievaluasi.

---

## Decision

Glass Admin Kit menggunakan struktur pengembangan berikut.

```
Release

↓

Milestone

↓

Sprint

↓

Task

↓

Commit
```

Sprint menjadi unit delivery utama.

Satu Sprint terdiri atas beberapa GAK Task.

Sprint harus menghasilkan satu deliverable yang jelas.

Contoh:

Sprint 01

Goal

Foundation

Tasks

- GAK-001
- GAK-002
- GAK-003
- GAK-004
- GAK-005
- GAK-006
- GAK-007

Deliverable

Project Foundation

---

## Alternatives

### One Task = One Sprint

Tidak dipilih.

Sprint menjadi terlalu kecil.

Tidak memiliki deliverable yang cukup besar.

---

### One Milestone = One Task

Tidak dipilih.

Milestone kehilangan makna sebagai capability besar.

---

## Consequences

### Positive

- Progress lebih mudah dipahami.
- Sprint memiliki tujuan yang jelas.
- Sprint Review menjadi lebih bermakna.
- Roadmap menjadi lebih sederhana.

### Negative

- Membutuhkan Sprint Planning.

---

## Review

Dilakukan ketika jumlah Sprint bertambah signifikan atau workflow berubah.

---

# ADR-015

## Title

AI-assisted Development Workflow

---

## Status

Accepted

---

## Context

Glass Admin Kit dikembangkan menggunakan bantuan AI.

Setiap AI memiliki kelebihan yang berbeda.

Pendekatan terbaik bukan menggunakan satu AI untuk semua pekerjaan, tetapi membagi tanggung jawab berdasarkan kekuatan masing-masing.

---

## Decision

Workflow pengembangan dibagi menjadi beberapa peran.

```
Product Owner

↓

Technical Lead

↓

Implementation

↓

Review

↓

Release
```

Implementasi saat ini:

### Product Owner

- Menentukan visi project.
- Menentukan prioritas.
- Menyetujui keputusan besar.

### Technical Lead (ChatGPT)

Bertanggung jawab terhadap:

- Architecture Review
- Engineering Review
- Sprint Planning
- Sprint Review
- Technical Debt Review
- Documentation
- ADR
- Roadmap
- Quality Gate

### Implementation Engineer (Codex)

Bertanggung jawab terhadap:

- Implementasi kode
- Refactor
- Build
- Compile
- Menyelesaikan Task

---

## Development Workflow

```
Planning

↓

Documentation

↓

Sprint Planning

↓

Implementation

↓

Review

↓

Sprint Review

↓

Release
```

---

## Documentation Flow

```
Engineering Handbook

↓

Architecture

↓

Roadmap

↓

Backlog

↓

Sprint

↓

Implementation
```

Seluruh implementasi harus mengikuti dokumentasi.

Bukan sebaliknya.

---

## Alternatives

### Single AI Development

Tidak dipilih.

Satu AI harus melakukan seluruh pekerjaan.

Sulit menjaga kualitas engineering sekaligus produktivitas.

---

### Manual Development Only

Tidak dipilih.

Tidak memanfaatkan kemampuan AI secara optimal.

---

## Consequences

### Positive

- Produktivitas meningkat.
- Review lebih fokus.
- Arsitektur lebih konsisten.
- Dokumentasi tetap menjadi sumber kebenaran.

### Negative

- Membutuhkan disiplin agar implementasi tetap mengikuti dokumentasi.
- Membutuhkan review pada akhir Sprint.

---

## Review

Workflow akan dievaluasi kembali apabila:

- Tool AI berubah.
- Tim bertambah.
- Workflow development berubah secara signifikan.

---

# Future ADR

ADR berikut akan dibuat ketika diperlukan.

- Offline Storage
- Networking Strategy
- Authentication Strategy
- Plugin Architecture
- CI/CD Pipeline
- Testing Strategy
- Code Coverage
- Release Automation

---

# ADR Rules

Sebelum sebuah perubahan besar diimplementasikan:

1. Diskusikan.
2. Tentukan keputusan.
3. Tambahkan ADR jika diperlukan.
4. Implementasikan.
5. Review pada Sprint Review.

---

# Revision History

## Checkpoint 001.1

### Added

- Decision Lifecycle
- Active ADR Table
- ADR Rules
- ADR-014 Sprint-based Development
- ADR-015 AI-assisted Development Workflow

### Changed

- Workflow engineering mengikuti struktur:
  Release → Milestone → Sprint → Task → Commit.

- Workflow AI dipisahkan menjadi:
  Product Owner,
  Technical Lead,
  dan Implementation Engineer.

# Glass Admin Kit

> Sprint Execution Guide

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Sprint Guide |
| Version | Checkpoint 001.1 |
| Project Version | v0.0.1 |
| Status | Active Development |
| Last Updated | 2026-07-01 |

---

# Purpose

Dokumen ini menjelaskan bagaimana Sprint dijalankan pada Glass Admin Kit.

Tujuan utama:

- menjaga konsistensi workflow
- menjaga kualitas engineering
- mempermudah kolaborasi manusia dan AI
- memastikan setiap Sprint menghasilkan deliverable yang jelas

Sprint Guide merupakan panduan operasional.

Seluruh Sprint mengikuti dokumen ini.

---

# Engineering Philosophy

Glass Admin Kit dibangun berdasarkan prinsip:

> Built with craftsmanship, not haste.

Sprint bukan perlombaan menyelesaikan task.

Sprint adalah proses menghasilkan software yang berkualitas.

---

# Sprint Lifecycle

```
Backlog

↓

Sprint Planning

↓

Implementation

↓

Verification

↓

Review

↓

Sprint Review

↓

Milestone

↓

Release
```

---

# Sprint Roles

Glass Admin Kit menggunakan tiga peran utama.

---

## Product Owner

Bertanggung jawab terhadap:

- visi project
- prioritas
- roadmap
- backlog
- acceptance

---

## Technical Lead

Bertanggung jawab terhadap:

- architecture review
- engineering review
- sprint planning
- sprint review
- technical debt
- documentation
- ADR
- quality gate

---

## Implementation Engineer

Bertanggung jawab terhadap:

- implementasi
- refactor
- build
- testing
- menyelesaikan task

---

# Sprint Planning

Sebelum Sprint dimulai tentukan:

- Sprint Goal
- Milestone
- Tasks
- Deliverables
- Scope
- Dependency
- Risk

Sprint tidak boleh dimulai tanpa Sprint Planning.

---

# Sprint Scope

Setiap Sprint memiliki satu tujuan utama.

Contoh:

Sprint 01

Goal

Foundation

Task

GAK-001

↓

GAK-007

Deliverable

Project Foundation

---

# Sprint Rules

Sprint hanya mengerjakan task yang berada pada backlog.

Task di luar backlog tidak boleh dikerjakan.

Jika muncul kebutuhan baru:

Discussion

↓

ADR (jika diperlukan)

↓

Backlog

↓

Sprint berikutnya

---

# Sprint Inputs

Sebelum Sprint dimulai.

Input minimum.

- Project terbaru
- Folder docs
- Sprint Goal
- Current Sprint
- Current Milestone

---

# Sprint Outputs

Setiap Sprint wajib menghasilkan:

- Implementasi
- Build
- Analyze
- Sprint Review
- Technical Debt
- Recommendation

---

# Sprint Deliverables

Deliverable bukan task.

Deliverable adalah capability.

Contoh.

Sprint 01

Deliverable

Project Foundation

Sprint 02

Deliverable

Component Library

Sprint 03

Deliverable

Dashboard

---

# Definition of Ready

Sprint siap dimulai apabila:

- seluruh requirement jelas
- task tersedia
- dependency selesai
- acceptance criteria tersedia

---

# Definition of Done

Sprint dianggap selesai apabila:

- seluruh task selesai
- flutter analyze bersih
- Android Build berhasil
- Web Build berhasil
- dokumentasi sinkron
- Sprint Review selesai
- tidak ada blocker

---

# Verification

Sebelum Sprint selesai lakukan:

```
dart format .

↓

flutter analyze

↓

flutter test

↓

flutter build web

↓

flutter build apk
```

---

# Sprint Review

Sprint Review dilakukan setelah implementasi selesai.

Template.

```
Sprint

Goal

Completed Tasks

Deliverables

Build Result

Analyze Result

Technical Debt

Lessons Learned

Recommendation

Next Sprint
```

---

# Technical Debt

Seluruh technical debt dicatat.

Minimal berisi:

- deskripsi
- dampak
- prioritas
- rencana penyelesaian

Technical debt tidak boleh hilang.

---

# Lessons Learned

Setiap Sprint menghasilkan pembelajaran.

Contoh:

- struktur folder perlu disederhanakan
- token kurang fleksibel
- responsive perlu diperbaiki

Lessons Learned digunakan pada Sprint berikutnya.

---

# Recommendation

Sprint menghasilkan rekomendasi.

Contoh:

- perlu ADR baru
- perlu refactor
- dependency perlu diganti

Recommendation tidak langsung diimplementasikan.

---

# Documentation Policy

Jika Sprint mengubah:

Architecture

↓

Update

02_ARCHITECTURE.md

---

Design System

↓

Update

03_DESIGN_SYSTEM.md

---

Roadmap

↓

Update

04_ROADMAP.md

---

Decision

↓

Update

06_DECISIONS.md

---

Backlog

↓

Update

10_BACKLOG.md

---

Changelog

↓

Update

05_CHANGELOG.md

(Hanya ketika Milestone selesai)

---

# AI-assisted Workflow

Glass Admin Kit memanfaatkan AI sesuai keunggulannya.

## Product Owner

Menentukan:

- prioritas
- scope
- acceptance

---

## Technical Lead

Melakukan:

- review
- planning
- architecture
- quality gate

---

## Implementation Engineer

Melakukan:

- coding
- refactor
- compile
- build

---

# AI Collaboration Rules

Implementation mengikuti dokumentasi.

Jika implementasi membutuhkan perubahan besar.

Jangan langsung coding.

Lakukan:

Discussion

↓

ADR

↓

Update Documentation

↓

Implementation

---

# Sprint Metrics

Sprint diukur menggunakan:

- Task Completion
- Build Success
- Analyze Result
- Technical Debt
- Documentation Status

Jumlah commit bukan indikator keberhasilan Sprint.

---

# Sprint Completion Checklist

- [ ] Semua Task selesai
- [ ] Deliverables selesai
- [ ] flutter analyze bersih
- [ ] Android Build berhasil
- [ ] Web Build berhasil
- [ ] Dokumentasi sinkron
- [ ] Technical Debt dicatat
- [ ] Sprint Review selesai
- [ ] Recommendation dibuat

---

# Sprint Report

Setiap Sprint menghasilkan laporan.

```
SPRINT_XXX.md
```

Contoh.

```
SPRINT_001.md
```

Isi laporan.

- Sprint Goal
- Deliverables
- Completed Tasks
- Build Result
- Analyze Result
- Technical Debt
- Lessons Learned
- Recommendation
- Next Sprint

---

# Sprint Archive

Seluruh laporan Sprint disimpan pada:

```
docs/

sprints/

SPRINT_001.md

SPRINT_002.md

SPRINT_003.md
```

Sprint Report merupakan histori engineering.

CHANGELOG tetap digunakan sebagai histori Release.

---

# Working Agreement

Seluruh anggota tim menyepakati:

- Documentation First
- Architecture First
- Sprint Based Development
- Small Commit Philosophy
- Milestone Driven Release
- Quality over Speed

---

# Revision History

## Checkpoint 001.1

Initial Sprint Guide.

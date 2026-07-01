# Glass Admin Kit

> Git Workflow

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Git Workflow |
| Version | Checkpoint 001.1 |
| Project Version | v0.0.1 |
| Status | Active Development |
| Last Updated | 2026-07-01 |

---

# Purpose

Dokumen ini mendefinisikan workflow pengembangan Glass Admin Kit.

Tujuan utamanya adalah:

- menjaga kualitas engineering
- menjaga histori Git tetap bersih
- mempermudah review
- mempermudah rollback
- menjaga dokumentasi tetap sinkron

Workflow ini dibuat sederhana agar efektif digunakan oleh tim kecil maupun AI-assisted development.

---

# Development Hierarchy

Glass Admin Kit menggunakan hirarki berikut.

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

---

# Development Flow

Setiap perubahan mengikuti alur berikut.

```
Planning

↓

Documentation

↓

Sprint Planning

↓

Implementation

↓

Build

↓

Analyze

↓

Review

↓

Sprint Review

↓

Merge

↓

Release
```

Tidak diperbolehkan melewati tahapan review.

---

# Sprint Workflow

Sprint merupakan unit kerja utama.

Setiap Sprint memiliki:

- Goal
- Scope
- Deliverables
- Definition of Done
- Sprint Review

Sprint dimulai dengan Sprint Planning dan berakhir dengan Sprint Review.

---

# Sprint Planning

Sebelum Sprint dimulai, tentukan:

- Sprint Goal
- Milestone
- Task yang dikerjakan
- Deliverables
- Dependency
- Risiko

Sprint hanya mengerjakan task yang telah disetujui.

---

# Sprint Scope Rule

Sprint harus memiliki ruang lingkup yang jelas.

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

Seluruh task harus memiliki tujuan yang sama.

---

# Sprint Completion Checklist

Sprint dianggap selesai apabila:

- Semua Task selesai
- flutter analyze bersih
- Android Build berhasil
- Web Build berhasil
- Dokumentasi sinkron
- Sprint Review selesai
- Tidak ada blocker

---

# Sprint Review

Setelah Sprint selesai lakukan Sprint Review.

Template:

```
Sprint

Goal

Completed Tasks

Deliverables

Build Result

Analyze Result

Technical Debt

Lessons Learned

Recommendations

Next Sprint
```

Sprint Review dilakukan sebelum merge menuju milestone berikutnya.

---

# Sprint Retrospective

Setelah Sprint Review, evaluasi:

Apa yang berjalan baik?

Apa yang dapat diperbaiki?

Apakah ada technical debt?

Apakah workflow masih efektif?

Hasil retrospective menjadi masukan Sprint berikutnya.

---

# Branch Strategy

Selama fase awal project digunakan strategi sederhana.

```
main
```

Selalu berada dalam kondisi stabil.

Untuk pekerjaan baru gunakan:

```
feature/<name>
```

Contoh:

```
feature/theme

feature/responsive

feature/dashboard

feature/glass-card
```

---

# Branch Naming

Gunakan format berikut.

```
feature/<feature>

fix/<issue>

refactor/<module>

docs/<document>

chore/<task>
```

---

# Commit Strategy

Gunakan Conventional Commits.

```
feat(scope): message

fix(scope): message

docs(scope): message

refactor(scope): message

style(scope): message

test(scope): message

chore(scope): message
```

---

# Commit Rules

Satu commit hanya memiliki satu tujuan.

Contoh yang baik:

```
feat(theme): add design tokens

feat(core): add responsive extension

fix(router): resolve nested navigation

docs(roadmap): update sprint planning
```

Commit seperti berikut tidak diperbolehkan.

```
fix

update

final

backup

coba
```

---

# Task Workflow

Setiap Task mengikuti alur berikut.

```
Todo

↓

In Progress

↓

Review

↓

Done
```

Task tidak boleh melewati status.

---

# Build Verification

Sebelum Task dianggap selesai.

Minimal harus lolos:

```
dart format .

flutter analyze

flutter test (jika tersedia)

flutter build web

flutter build apk
```

---

# Documentation Policy

Dokumentasi mengikuti implementasi.

Perubahan besar wajib memperbarui dokumen terkait.

| Dokumen | Update |
|----------|--------|
| Handbook | Perubahan engineering |
| Architecture | Perubahan arsitektur |
| Design System | Perubahan design system |
| Roadmap | Perubahan milestone |
| Decisions | Keputusan baru |
| Backlog | Status task |
| Changelog | Milestone atau Release selesai |

---

# Changelog Policy

CHANGELOG diperbarui hanya ketika:

- Milestone selesai
- Release dibuat

Sprint, Task, dan Commit tidak mengubah CHANGELOG.

---

# Code Review

Review dilakukan terhadap:

- Arsitektur
- Readability
- Maintainability
- Performance
- Design System
- Responsive
- Reusability

Review bukan mencari kesalahan developer.

Review bertujuan meningkatkan kualitas project.

---

# Review Checklist

Reviewer memastikan:

- Struktur folder benar
- Naming konsisten
- Theme digunakan
- Token digunakan
- Responsive benar
- Widget reusable
- Provider sesuai
- Repository sesuai
- Dokumentasi sinkron

---

# Merge Policy

Sebelum merge.

Pastikan:

- Analyze bersih
- Build berhasil
- Sprint selesai
- Review selesai
- Tidak ada blocker

---

# Release Workflow

Release mengikuti alur berikut.

```
Milestone Complete

↓

Sprint Review

↓

Update Documentation

↓

Update CHANGELOG

↓

Git Tag

↓

Release
```

---

# Git Tag

Gunakan Semantic Version.

```
v0.0.1

v0.1.0

v0.5.0

v1.0.0
```

---

# Hotfix Workflow

Untuk bug kritis.

```
main

↓

fix/<issue>

↓

Review

↓

Patch Release
```

Contoh:

```
v0.1.1
```

---

# AI-assisted Workflow

Glass Admin Kit menggunakan workflow berikut.

```
Product Owner

↓

Technical Lead

↓

Implementation

↓

Review

↓

Sprint Review

↓

Release
```

Peran:

Product Owner

- menentukan prioritas
- menentukan scope

Technical Lead

- review engineering
- review architecture
- sprint planning
- sprint review

Implementation

- implementasi kode
- refactor
- build

---

# Working Agreement

Seluruh tim menyepakati:

- Small Commit Philosophy
- Documentation First
- Sprint Based Development
- Milestone Driven Release
- Changelog per Milestone
- Quality over Speed

---

# Future Evolution

Workflow dapat berkembang dengan:

- Pull Request Template
- GitHub Actions
- Automatic Release
- Semantic Release
- Release Notes Generator
- CI/CD Pipeline

Perubahan workflow harus melalui ADR.

---

# Revision History

## Checkpoint 001.1

### Added

- Development Hierarchy
- Sprint Workflow
- Sprint Planning
- Sprint Review
- Sprint Retrospective
- Sprint Completion Checklist
- AI-assisted Workflow

### Changed

- Workflow direstrukturisasi menjadi:
  Release → Milestone → Sprint → Task → Commit

- CHANGELOG diperbarui hanya pada Milestone atau Release.

- Sprint menjadi unit kerja utama.

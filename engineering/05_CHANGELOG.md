# Changelog

All notable changes to **Glass Admin Kit** will be documented in this file.

This project follows:

- Semantic Versioning (SemVer)
- Keep a Changelog

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Changelog |
| Version | Checkpoint 001.1 |
| Project Version | v0.0.1 |
| Status | Active Development |
| Last Updated | 2026-07-01 |

---

# Purpose

Dokumen ini mencatat perubahan penting yang terjadi pada setiap **Milestone** dan **Release**.

CHANGELOG **bukan** riwayat Git.

CHANGELOG menjelaskan:

- apa yang berubah
- mengapa perubahan tersebut penting
- kapan perubahan dirilis

Git tetap menjadi sumber histori implementasi secara detail.

---

# Changelog Policy

Glass Admin Kit menggunakan kebijakan berikut.

## CHANGELOG diperbarui hanya ketika:

- sebuah Milestone selesai, atau
- sebuah Release dipublikasikan.

CHANGELOG **tidak diperbarui** untuk:

- setiap Commit
- setiap Task (GAK)
- setiap Pull Request
- setiap Refactor kecil

Dengan demikian CHANGELOG tetap ringkas dan memiliki nilai dokumentasi yang tinggi.

---

# Development Hierarchy

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

Hubungan dengan CHANGELOG:

| Level | Dicatat di CHANGELOG |
|--------|----------------------|
| Release | ✅ Ya |
| Milestone | ✅ Ya |
| Sprint | ❌ Tidak |
| Task | ❌ Tidak |
| Commit | ❌ Tidak |

---

# Release Status

| Version | Status |
|----------|--------|
| v0.0.1 Foundation | Active Development |
| v0.1.0 Alpha | Planned |
| v0.5.0 Beta | Planned |
| v1.0.0 Stable | Planned |

---

# [Unreleased]

Perubahan yang telah selesai tetapi belum menjadi bagian dari Milestone atau Release.

Bagian ini boleh digunakan sementara selama proses development.

Ketika Milestone selesai, seluruh isi bagian ini dipindahkan ke versi yang sesuai.

---

# [0.0.1] - Foundation

Status

🚧 In Progress

Codename

Foundation

---

## Milestone

Foundation

Status:

In Progress

---

## Goal

Membangun fondasi engineering Glass Admin Kit.

---

## Planned Deliverables

### Foundation

- Project Bootstrap
- Theme Foundation
- Design Tokens
- Theme Extension
- Responsive Engine
- Responsive Extension
- Glass Scaffold

---

## Added

### Documentation

- Engineering Handbook
- Architecture
- Design System
- Product Roadmap
- Changelog
- Architecture Decision Records
- Project Structure
- Code Style
- Git Workflow
- Product Backlog

---

### Engineering

- Development workflow
- Coding standard
- Documentation standard
- Sprint workflow
- Git convention

---

### Architecture

- Feature First Architecture
- Layer responsibilities
- Dependency rules
- Routing strategy
- Riverpod strategy

---

### Design System

- Design tokens
- Layout system
- Typography hierarchy
- Responsive guideline
- Glass UI guideline

---

## Changed

None.

---

## Deprecated

None.

---

## Removed

None.

---

## Fixed

None.

---

## Security

None.

---

## Refactor

None.

---

# Future Releases

## v0.1.0 Alpha

Planned Milestones

- Component Library
- Dashboard Experience
- Demo Application

---

## v0.5.0 Beta

Planned Milestones

- Authentication
- Data Layer
- Repository
- API Integration

---

## v1.0.0 Stable

Target Deliverables

- Stable API
- Complete Documentation
- Responsive Validation
- Accessibility
- Performance Optimization

---

# Release Checklist

Sebelum sebuah Release dibuat:

- [ ] Seluruh Sprint selesai
- [ ] Seluruh Milestone selesai
- [ ] flutter analyze bersih
- [ ] Android Build berhasil
- [ ] Web Build berhasil
- [ ] Dokumentasi sinkron
- [ ] CHANGELOG diperbarui
- [ ] Version diperbarui
- [ ] Git Tag dibuat

---

# Milestone Checklist

Sebelum Milestone dinyatakan selesai:

- [ ] Seluruh Task selesai
- [ ] Sprint Review selesai
- [ ] Tidak ada blocker
- [ ] Deliverables lengkap
- [ ] Technical Debt terdokumentasi

---

# Versioning Policy

Glass Admin Kit menggunakan Semantic Versioning.

```
MAJOR.MINOR.PATCH
```

Contoh:

```
0.0.1

0.1.0

0.5.0

1.0.0
```

### Major

Breaking changes.

---

### Minor

Capability baru.

---

### Patch

Bug fix.

---

# Codename History

| Version | Codename |
|----------|----------|
| 0.0.1 | Foundation |
| 0.1.0 | Alpha |
| 0.5.0 | Beta |
| 1.0.0 | Stable |

---

# Documentation Policy

Perubahan dokumentasi mengikuti aturan berikut.

| Dokumen | Kapan Diperbarui |
|----------|------------------|
| Engineering Handbook | Jika prinsip engineering berubah |
| Architecture | Jika arsitektur berubah |
| Design System | Jika design system berubah |
| Roadmap | Jika roadmap berubah |
| Changelog | Setelah Milestone atau Release selesai |
| Decisions | Jika ada keputusan baru |
| Project Structure | Jika struktur berubah |
| Code Style | Jika coding standard berubah |
| Git Workflow | Jika workflow berubah |
| Backlog | Saat status task berubah |

---

# Notes

Git History menjelaskan:

> bagaimana implementasi dilakukan.

CHANGELOG menjelaskan:

> apa yang berubah dan mengapa perubahan tersebut penting.

Kedua dokumen saling melengkapi.

---

# Revision History

## Checkpoint 001.1

### Added

- Changelog Policy
- Development Hierarchy
- Milestone Checklist
- Release Checklist
- Documentation Policy

### Changed

- CHANGELOG sekarang hanya diperbarui saat Milestone atau Release selesai.
- Sprint dan Task tidak lagi dicatat di CHANGELOG.
- Struktur mengikuti workflow:
  Release → Milestone → Sprint → Task → Commit.

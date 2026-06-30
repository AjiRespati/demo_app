# Glass Admin Kit

> Git Workflow

---

| Item | Value |
|------|-------|
| Project | Glass Admin Kit |
| Document | Git Workflow |
| Version | Checkpoint 001 |
| Project Version | v0.0.1 |
| Codename | Foundation |
| Status | Active Development |
| Last Updated | 2026-06-30 |

---

# Purpose

Dokumen ini mendefinisikan standar penggunaan Git pada Glass Admin Kit.

Tujuannya:

- histori commit mudah dipahami
- review lebih sederhana
- rollback aman
- release mudah dibuat
- dokumentasi tetap sinkron

Git bukan hanya tempat menyimpan kode.

Git adalah sejarah evolusi project.

---

# Workflow Philosophy

Glass Admin Kit menggunakan prinsip:

> Small Commits. Clear History.

Lebih baik:

10 commit kecil

daripada

1 commit besar.

---

# Branch Strategy

Selama tahap awal (v0.x.x), project menggunakan branch sederhana.

```
main
```

merupakan branch utama.

Jika diperlukan development yang cukup besar, gunakan:

```
feature/<name>
```

Contoh:

```
feature/theme

feature/dashboard

feature/responsive

feature/sidebar
```

---

# Branch Naming

Gunakan format:

```
feature/<feature>

fix/<issue>

refactor/<module>

docs/<document>

chore/<task>
```

Contoh:

```
feature/glass-card

feature/theme

fix/sidebar-overflow

docs/design-system

refactor/dashboard

chore/update-dependencies
```

---

# Commit Philosophy

Satu commit = satu tujuan.

Commit tidak boleh mencampur:

- bug fix
- refactor
- feature
- documentation

dalam satu commit.

---

# Commit Format

Gunakan Conventional Commits.

```
feat(scope): message

fix(scope): message

docs(scope): message

refactor(scope): message

test(scope): message

chore(scope): message

style(scope): message
```

---

# Examples

```
feat(theme): add glass theme extension

feat(core): add responsive engine

feat(widget): implement glass card

fix(sidebar): prevent overflow

docs(handbook): update coding standard

refactor(router): simplify navigation

test(core): add responsive tests

chore(deps): upgrade flutter packages
```

---

# Internal Task ID

Selain Conventional Commit,

setiap pekerjaan memiliki Task ID.

Contoh:

```
GAK-001

GAK-002

GAK-003
```

Task ID digunakan pada:

- Roadmap
- Pull Request
- Issue
- Sprint

Task ID **tidak wajib** menjadi bagian dari commit message, tetapi harus tercatat pada deskripsi PR atau catatan sprint.

---

# Atomic Commit Rule

Satu commit hanya boleh berisi:

- satu feature
- satu refactor
- satu bug fix
- satu dokumentasi

Jika commit melakukan terlalu banyak perubahan,

pecah menjadi beberapa commit.

---

# Before Commit Checklist

Sebelum commit:

- [ ] flutter analyze
- [ ] dart format .
- [ ] Tidak ada debug print
- [ ] Tidak ada TODO tanpa owner
- [ ] Tidak ada commented code
- [ ] Tidak ada file sementara

---

# Pull Request Policy

Setiap Pull Request harus menjelaskan:

## Summary

Apa yang berubah.

---

## Reason

Mengapa perubahan diperlukan.

---

## Scope

Area yang terdampak.

---

## Testing

Bagaimana perubahan diuji.

---

## Screenshots

Jika UI berubah,

lampirkan screenshot.

---

## Checklist

- [ ] Analyze bersih
- [ ] Build berhasil
- [ ] Dokumentasi diperbarui bila perlu
- [ ] Tidak ada breaking change yang tidak terdokumentasi

---

# Code Review Principles

Review dilakukan terhadap:

- arsitektur
- keterbacaan
- konsistensi
- maintainability
- performa
- kesesuaian design system

Review bukan untuk mencari kesalahan pribadi.

Review bertujuan meningkatkan kualitas project.

---

# Review Checklist

Reviewer memeriksa:

- Struktur folder
- Penamaan
- Token digunakan
- Theme digunakan
- Responsive
- Reusable widget
- Provider
- Repository
- Documentation

---

# Merge Policy

Sebelum merge:

- Review selesai
- Analyze bersih
- Build berhasil
- Konflik diselesaikan
- Dokumentasi sinkron

---

# Release Workflow

```
Planning

↓

Documentation

↓

Implementation

↓

Review

↓

Testing

↓

Merge

↓

Milestone Complete

↓

Update CHANGELOG

↓

Git Tag

↓

Release
```

Perhatikan bahwa CHANGELOG diperbarui **setelah milestone selesai**, bukan setiap commit.

---

# Git Tag Convention

Gunakan tag Semantic Versioning.

Contoh:

```
v0.0.1

v0.0.2

v0.1.0

v1.0.0
```

Tag dibuat setelah release berhasil.

---

# Hotfix Workflow

Untuk bug kritis:

```
main

↓

fix/<issue>

↓

Review

↓

Merge

↓

Patch Release
```

Contoh:

```
v0.1.1
```

---

# Revert Policy

Jika sebuah commit harus dibatalkan:

Gunakan:

```
git revert
```

Hindari:

```
git reset --hard
```

pada branch yang sudah dibagikan.

Tujuannya menjaga histori tetap utuh.

---

# Documentation Policy

Perubahan dokumentasi mengikuti aturan berikut.

| Dokumen | Kapan Diperbarui |
|----------|------------------|
| Engineering Handbook | Perubahan prinsip engineering |
| Architecture | Perubahan arsitektur |
| Design System | Perubahan token atau UI |
| Roadmap | Perubahan target atau milestone |
| Changelog | Hanya saat milestone/release selesai |
| Decisions | Keputusan engineering baru |
| Project Structure | Perubahan struktur folder |
| Code Style | Perubahan standar penulisan kode |
| Git Workflow | Perubahan proses development |
| Backlog | Perubahan prioritas pekerjaan |

---

# Protected Rules

Branch `main` harus selalu:

- dapat di-build
- lulus `flutter analyze`
- tidak mengandung eksperimen
- mencerminkan kondisi stabil saat ini

Eksperimen dilakukan di branch `feature/*`.

---

# Git Ignore Policy

Jangan pernah melakukan commit terhadap:

- build/
- .dart_tool/
- .idea/
- .vscode/ (kecuali konfigurasi yang disepakati)
- file hasil generate yang tidak perlu
- file rahasia seperti `.env`

---

# Commit Anti-Patterns

Hindari commit seperti:

```
fix

update

final

final2

fix fix

coba

test

backup
```

Commit harus menjelaskan maksud perubahan.

---

# Good Commit Examples

```
feat(core): add spacing tokens

feat(theme): implement dark theme

feat(widget): create glass section

fix(router): resolve nested navigation issue

refactor(core): simplify responsive extension

docs(architecture): clarify dependency rules
```

---

# Working Agreement

Seluruh anggota tim menyepakati:

- kualitas lebih penting daripada jumlah commit
- commit kecil lebih baik daripada commit besar
- dokumentasi mengikuti implementasi
- implementasi mengikuti keputusan ADR
- CHANGELOG diperbarui hanya pada milestone

---

# Future Evolution

Saat tim berkembang, workflow dapat diperluas dengan:

- GitHub Issues
- Pull Request Template
- Issue Template
- Release Template
- GitHub Actions
- Automatic Versioning
- Conventional Release
- Semantic Release

Perubahan tersebut harus didokumentasikan melalui ADR.

---

# Revision History

## Checkpoint 001

- Initial Git workflow
- Branch strategy
- Commit convention
- Review policy
- Release workflow
- Documentation policy
# Plan — edomata

> BSG fork of hnaderi/edomata. Event-driven automata for Scala 3 (JVM, JS, Native).
> Published to Maven Central under `io.github.beyond-scale-group`.

## Objectives

1. **Maintain fork parity** — keep upstream merges flowing, resolve conflicts promptly
2. **Ship v0.13.0** — Flyway/Liquibase migration packaging (milestone `v0.13.0`)
3. **Dependency hygiene** — Scala Steward PRs reviewed within 48h (milestone `2026-05-sprint`)
4. **Documentation** — keep docs site aligned with code changes

## Epics

### E1 — Flyway packaging (v0.13.0)

- Issue #40: `feat: PGSchema Flyway/Liquibase migration packaging`
- Milestone: `v0.13.0 - Flyway packaging`
- Scope: new `edomata-flyway` module, SQL generation from PGSchema, CI publish

### E2 — Dependency review (2026-05-sprint)

- Milestone: `2026-05-sprint - dependency review`
- Scope: audit transitive deps, bump major versions, verify cross-platform builds

### E3 — Upstream sync

- Ongoing: merge `hnaderi/edomata:main` into `beyond-scale-group/edomata:main`
- Label: `upstream-sync`

## Milestones

| Milestone | Target | Status |
|-----------|--------|--------|
| v0.13.0 - Flyway packaging | TBD | Open |
| 2026-05-sprint - dependency review | 2026-05-31 | Open |

## Links

- Upstream: <https://github.com/hnaderi/edomata>
- Maven Central: <https://central.sonatype.com/namespace/io.github.beyond-scale-group>
- Docs site: <https://beyond-scale-group.github.io/edomata/>

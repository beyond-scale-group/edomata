# Cleaner Config — edomata

## Hygiene rules

- Stale issue threshold: 90 days without activity
- Auto-close candidates: issues labeled `wontfix` or `duplicate` still open after 7 days
- Near-duplicate detection: title similarity > 0.85

## Exclusions

- Issues labeled `upstream-sync` — these follow upstream cadence, not ours
- Issues labeled `dependencies` — managed by Scala Steward, not manual triage
- Milestoned issues — actively planned, never auto-close

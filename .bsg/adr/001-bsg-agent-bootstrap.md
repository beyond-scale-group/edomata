# ADR-001: BSG agent infrastructure bootstrap

- **Status:** Accepted
- **Date:** 2026-05-06
- **Context:** edomata is a BSG-maintained fork of hnaderi/edomata, published to
  Maven Central. As a library repo (not a web app), several BSG agents have
  reduced scope: no SEO crawling, no landing pages, no user-facing marketing
  beyond docs and README.
- **Decision:** Bootstrap `.bsg/` with all nine agent custom-docs. Agents whose
  domain is thin for a library (seo, marketing, storytelling) get minimal seed
  files that can grow if the docs site or landing page expands.
- **Consequences:** All BSG agents can tick against this repo. Thin files may
  stay static — that's fine; the cleaner won't flag them as stale if they're
  under 90 days old.

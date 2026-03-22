---
name: qa-gate
description: Validate delivered behavior with evidence across the relevant test layers and acceptance criteria
---

## Test layers to consider

- Unit or logic checks
- API or integration checks
- Browser or UI checks
- End-to-end workflow checks

## How to work

- Choose the smallest set of checks that gives strong confidence for the change.
- Map verification back to acceptance criteria.
- Record what could not be verified and why.
- Reject when critical behavior remains unverified without a strong reason.

## Command policy

- Start with the repo's native test entrypoints when they exist.
- When direct framework execution is needed, prefer native CLIs such as `npx playwright`, `pnpm exec playwright`, `bunx playwright`, `npx cypress`, and `pnpm exec cypress`.
- Do not invent alternate harnesses with ad-hoc Node, Bash, or Python scripting when the repo command or framework CLI can cover the scenario.
- Collect evidence from the framework output and artifacts instead of replacing the framework runner.

## Missing coverage

- If verification would require a new permanent test, reject or hand the gap back to Developer instead of creating temporary test code.
- Treat committed regression tests as Developer-owned implementation work; treat logs, screenshots, traces, videos, and reports as Quality-owned evidence.

## Output contract

- Verdict: approved or rejected
- Checks run and evidence
- Acceptance criteria coverage
- Failures or gaps
- Handoff notes for Developer

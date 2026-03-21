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

## Output contract

- Verdict: approved or rejected
- Checks run and evidence
- Acceptance criteria coverage
- Failures or gaps
- Handoff notes for Builder

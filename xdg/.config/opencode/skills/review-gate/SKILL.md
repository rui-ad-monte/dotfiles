---
name: review-gate
description: Review code against requirements, architecture, repository patterns, and safety expectations
---

## Review priorities

- Correctness against acceptance criteria
- Alignment with architecture intent
- Repository conventions and maintainability
- Safety, security, and rollback awareness
- Test adequacy for the risk introduced

## Rejection criteria

- Missing or incorrect behavior
- Architecture drift without justification
- Unsafe changes or regression risk without mitigation
- Inadequate validation for critical paths

## Output contract

- Verdict: approved or rejected
- Blocking findings first
- Clear fixes for Developer
- Residual risks for Quality when approved

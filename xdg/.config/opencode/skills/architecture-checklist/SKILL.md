---
name: architecture-checklist
description: Turn a product brief into a grounded implementation plan across repos, services, and infrastructure
---

## What to produce

- Architecture summary
- Impacted repos and services
- Required code and config changes
- Contract and data model impacts
- Infrastructure and deployment impacts
- Rollout and observability plan
- Risks and edge cases
- Validation strategy
- Handoff notes for Builder

## How to work

- Confirm the real implementation surface before planning changes.
- Call out systems that were checked and found unaffected.
- Include operational concerns when the change touches runtime behavior.
- Prefer simple, incremental rollout plans over large rewrites.

## Quality bar

- The plan should tell Builder where to work and why.
- Risks should map to concrete validation.
- Unknowns should be explicit when they could change scope or implementation.

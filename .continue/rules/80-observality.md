---
name: Global Observability Rules
alwaysApply: true
description: Universal rules for safe and consistent logging, monitoring and observability practices.
---

# Observability Rules

## Logging
- Follow the project's existing logging conventions.
- Do not log secrets, credentials or sensitive data.
- Preserve log levels (INFO, WARN, ERROR) as established.
- Do not introduce excessive or noisy logging.

## Metrics
- Reuse existing metrics infrastructure when available.
- Do not create duplicate metrics for the same responsibility.
- Follow naming conventions already used in the project.

## Monitoring
- Do not disable or bypass existing monitoring without explicit approval.
- Respect alert thresholds and escalation policies.
- Report failures honestly; never hide or suppress alerts.

## Tracing
- Follow the project's tracing conventions (e.g., distributed tracing).
- Do not introduce new tracing frameworks without justification.
- Ensure traces preserve correlation IDs and context.

## Scope
Keep observability changes focused on the requested task.
Do not reorganize logging, metrics or monitoring infrastructure unnecessarily.

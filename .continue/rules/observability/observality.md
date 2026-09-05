---
name: Global Observability Rules
alwaysApply: false
description: Rules for maintaining consistent logging, metrics, tracing, monitoring, and observability practices.
---
# Observability Rules

## Existing Infrastructure

Follow the project's existing observability architecture, tooling, conventions, and configuration.

Reuse existing logging, metrics, tracing, monitoring, and telemetry infrastructure whenever applicable.

Do not introduce competing or duplicate observability mechanisms without a concrete requirement.

## Logging

Follow established logging conventions and levels.

Never log secrets, credentials, tokens, private keys, or unnecessary sensitive data.

Avoid excessive, redundant, or noisy logging.

Logs must provide useful diagnostic context without exposing sensitive information.

## Metrics

Follow existing metric naming, labeling, aggregation, and instrumentation conventions.

Avoid duplicate metrics or unnecessary instrumentation.

## Tracing

Preserve established tracing and context-propagation mechanisms.

Do not break correlation, trace, or request context across service boundaries.

Do not introduce a new tracing framework when an existing mechanism satisfies the requirement.

## Monitoring

Do not disable, bypass, or weaken existing monitoring, health checks, alerts, or telemetry without explicit justification.

Preserve existing operational and alerting behavior unless the task requires a change.

## Scope

Keep observability changes limited to the requested behavior.

Do not unnecessarily reorganize logging, metrics, tracing, monitoring, or telemetry infrastructure.

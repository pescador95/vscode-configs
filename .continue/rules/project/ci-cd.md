---

name: Global CI/CD Rules
alwaysApply: false
description: Rules for safely modifying CI/CD pipelines, build automation, deployments, environments, and pipeline dependencies.
---

# CI/CD Rules

## Existing Pipeline

Treat the existing CI/CD configuration as the source of truth.

Preserve the established build, test, packaging, deployment flow, tools, jobs, and environment structure.

Do not introduce new pipeline patterns or tools when existing mechanisms already satisfy the requirement.

## Safety

Never introduce commands that can unintentionally delete, overwrite, destroy, or bypass existing resources or security controls.

Never weaken authentication, authorization, validation, or other security controls.

## Secrets

Never hard-code, expose, log, echo, or otherwise propagate secrets or sensitive values through CI/CD configuration or output.

Use the project's established secure configuration mechanism.

## Build and Test

Do not skip, disable, or weaken existing build, test, or validation stages unless explicitly required.

Follow the project's established commands and tooling.

## Environments

Preserve environment boundaries and environment-specific configuration.

Never deploy to production, execute production migrations, or perform production rollback without explicit user approval.

## Dependencies

Do not add, remove, or upgrade CI/CD dependencies or tools without explicit approval or a clear task requirement.

Prefer existing dependencies and mechanisms over introducing alternatives.

## Scope

Keep pipeline changes limited to the requested task.

Do not unnecessarily restructure pipelines, rename jobs, rewrite working configurations, or change unrelated deployment behavior.

## Validation

After modifying CI/CD configuration, inspect the resulting diff and validate the affected configuration using the project's established mechanisms when practical.

Report validation failures honestly. Never hide or ignore failures.

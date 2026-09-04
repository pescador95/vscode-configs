---
name: Global CI/CD Rules
alwaysApply: true
description: Universal rules for safe and consistent continuous integration and deployment practices.
---

# CI/CD Rules

## Source of Truth

The existing CI/CD configuration defines the pipeline.

Do not introduce new pipeline structures or tools unless explicitly requested.

Respect the project's established build, test and deployment flow.

## Safety

Never add destructive commands to pipelines without explicit approval.

Avoid commands that can:

- delete files or directories;
- drop or truncate databases;
- remove containers or volumes;
- overwrite production configuration;
- bypass authentication or authorization.

## Secrets

Do not expose secrets in pipelines.

Use environment variables, secret managers or the project's existing secure mechanism.

Never log, echo or print sensitive values in build output.

## Build and Test

Always run the project's established build and test commands before deployment.

Do not skip or disable tests without explicit approval.

Do not introduce new build or test frameworks without justification.

## Deployment

Respect environment boundaries.

Do not mix configuration between development, staging and production.

Never deploy to production without explicit approval.

Follow the project's existing deployment strategy (e.g., Docker, Kubernetes, serverless, VM-based).

## Validation

After pipeline modifications:

1. inspect the resulting diff;
2. verify that unrelated files were not changed;
3. run the pipeline locally or in a safe environment when possible;
4. report failures honestly.

Never hide or ignore validation failures.

## Dependencies

Do not add, remove or upgrade CI/CD dependencies without explicit approval.

Before requesting a dependency change:

1. inspect existing dependencies;
2. verify whether equivalent functionality already exists;
3. explain why the change is required.

## Scope

Keep CI/CD changes focused on the requested task.

Do not:

- reorganize the pipeline unnecessarily;
- rename unrelated jobs or steps;
- rewrite working configurations;
- introduce new deployment strategies without justification.

## User Approval Required

Never perform the following without explicit approval:

- production deployments;
- database migrations;
- rollback operations;
- destructive commands;
- pipeline deletions;
- secret rotations.


---
name: Global Dependencies Rules
alwaysApply: false
description: Rules for safely managing project dependencies, versions, packages, plugins, and build configuration.
---
# Dependencies Rules

## Source of Truth

Treat the existing dependency configuration as the source of truth.

Follow the project's established package manager, repositories, dependency scopes, versioning strategy, and build configuration.

## Adding Dependencies

Do not introduce dependencies unless required by the task.

Before adding one:

1. Inspect existing dependencies for equivalent functionality.
2. Prefer existing libraries and project mechanisms.
3. Verify the dependency's compatibility and source.
4. Avoid adding libraries solely because they are newer, more popular, or technically preferable.

## Removing Dependencies

Do not remove dependencies unless required by the task.

Before removal, verify that they are unused and that the change does not break direct or transitive usage, builds, tests, or runtime behavior.

## Version Changes

Do not upgrade or downgrade dependency versions unless required by the task.

Before changing a version, consider compatibility, breaking changes, affected integrations, and the project's established version constraints.

Never change unrelated dependencies.

## Consistency

Avoid duplicate or overlapping libraries for the same responsibility.

Prefer the project's existing dependency and version strategy over introducing alternatives.

## Scope

Keep dependency changes limited to the requested task.

Do not change package managers, repositories, manifests, build configuration, plugins, or unrelated dependencies without a concrete requirement.

## Security

Use trusted and verified dependency sources.

Do not introduce dependencies known to be malicious, compromised, untrusted, or inconsistent with the project's security requirements.
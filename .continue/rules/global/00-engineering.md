---
name: Global Engineering Rules
alwaysApply: true
description: Universal engineering principles for all software development tasks.
---

# Global Engineering Rules

## Source of Truth

Treat the existing codebase and its established conventions as the primary source of truth.

## Consistency

Follow existing architecture, patterns, naming, abstractions, libraries, and implementation style.

Prefer reusing or extending existing solutions over introducing alternatives.

## Minimal Scope

Make the smallest change that correctly satisfies the request.

Do not modify unrelated code, files, configuration, dependencies, or behavior.

## No Assumptions

Never invent APIs, classes, methods, dependencies, configuration, requirements, or project behavior.

Inspect relevant code, usages, documentation, and configuration when information is uncertain.

## Compatibility

Preserve existing behavior, contracts, and integrations unless the task explicitly requires a change.

Avoid unnecessary breaking changes.

## Validation

Validate changes against the requested behavior using the project's established build, test, analysis, and validation mechanisms when practical.

## Ambiguity

Resolve ambiguity using available project context and established patterns.

Ask for clarification only when the requirement cannot be safely determined.

## Architecture Conflicts

When a requested change conflicts with established architecture or conventions, identify the conflict and follow the existing pattern unless the user explicitly requests a deviation.

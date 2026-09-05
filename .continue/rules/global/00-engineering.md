---
name: Engineering Rules
alwaysApply: false
description: Engineering principles for software development, refactoring, architecture, and code changes.
---

# Engineering Rules

## Source of Truth

Treat the existing codebase and its established conventions as the primary source of truth.

## Consistency

Follow existing architecture, patterns, naming, abstractions, libraries, and implementation styles.

Prefer reusing or extending existing solutions over introducing alternatives.

## Minimal Scope

Make the smallest change that correctly satisfies the request.

Do not modify unrelated code, files, configuration, dependencies, or behavior.

## Compatibility

Preserve existing behavior, contracts, and integrations unless the task explicitly requires a change.

Avoid unnecessary breaking changes.

## Architecture

When a requested change conflicts with established architecture or conventions, identify the conflict and follow the existing pattern unless the user explicitly requests a deviation.

## Ambiguity

Resolve ambiguity using available project context and established patterns.

Ask for clarification only when the requirement cannot be safely determined.

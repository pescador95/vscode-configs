---
name: Global Testing Standards
globs: ["**/*Test.java", "**/*Tests.java", "**/test/**", "**/tests/**"]
alwaysApply: false
description: Universal testing conventions and safeguards for maintaining existing test behavior.
---

# Testing Rules

## Existing Tests

Treat existing tests as part of the project's specification.

Before modifying production code, inspect relevant tests when they exist.

Do not modify tests merely to make a failing implementation pass.

## New Tests

When implementing new behavior, follow the testing pattern already used by equivalent components.

Reuse existing:

- test structure;
- fixtures;
- factories;
- mocks;
- assertions;
- setup;
- integration-test infrastructure.

## Test Scope

Add or modify only tests relevant to the requested change.

Do not rewrite unrelated tests.

## Test Behavior

A test should validate the intended behavior, not the implementation details unless that is the established project convention.

## Existing Failures

If unrelated tests already fail:

- do not alter them;
- report the failure;
- distinguish pre-existing failures from failures caused by the current change.

## Validation

After implementation, run the project's established validation/test commands when appropriate.

Do not introduce a new testing framework or dependency without explicit approval.
---

name: Global Testing Standards
globs: ["**/*Test.java", "**/*Tests.java", "**/*_test.go", "**/*.test.ts", "**/*.spec.ts", "**/*.test.js", "**/*.spec.js", "**/*.test.tsx", "**/*.spec.tsx", "**/*.test.jsx", "**/*.spec.jsx", "**/test/**", "**/tests/**"]
alwaysApply: false
description: Rules for preserving existing test behavior and following established testing patterns.
---

# Testing Rules

## Existing Tests

Treat existing tests as part of the project's specification.

Before changing production code, inspect relevant tests when they exist.

Never modify a test solely to make an implementation pass. Change tests only when the requested behavior or contract has intentionally changed.

## Test Consistency

When adding or modifying tests, follow the patterns established by equivalent tests.

Reuse existing test structures, fixtures, factories, mocks, assertions, setup, and integration infrastructure.

Tests should validate intended behavior rather than implementation details unless the project convention requires otherwise.

## Scope

Keep test changes limited to the requested behavior.

Do not rewrite or modify unrelated tests.

## Existing Failures

Do not modify unrelated failing tests.

Distinguish pre-existing failures from failures introduced by the current change and report them accordingly.

## Dependencies

Do not introduce a new testing framework, library, or dependency unless explicitly required or approved.

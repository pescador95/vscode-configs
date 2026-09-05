---
name: Global Agent Behavior
alwaysApply: true
description: Universal agent behavior for safely working with repositories.
---

# Global Agent Behavior

## Understand Before Acting

Before changing existing project artifacts:

1. Inspect the relevant context.
2. Read affected files.
3. Search related implementations and usages when necessary.
4. Follow established project conventions.
5. Make the smallest change that correctly satisfies the request.

Never act on assumptions when the required information can be inspected.

## Preserve Existing Work

Treat existing user changes as intentional.

Never discard, overwrite, revert, or silently modify unrelated existing work.

## Scope

Limit changes to the requested task.

Do not introduce unrelated refactoring, dependencies, technologies, architectural changes, or formatting changes.

## Validation

After making changes:

1. Inspect the resulting diff.
2. Verify that changes remain within scope.
3. Run appropriate project validation when practical and permitted.
4. Report failures and limitations honestly.

Never hide, suppress, or misrepresent validation results.
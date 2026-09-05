---

name: Global Agent Behavior
alwaysApply: true
description: Universal agent behavior for safely exploring, modifying, and validating repository changes.
---

# Global Agent Behavior

## Understand Before Modifying

Before modifying existing code:

1. Inspect the relevant project context.
2. Read the affected files.
3. Search for related implementations and usages when necessary.
4. Identify established conventions.
5. Make the smallest change that satisfies the request.

Never modify code based solely on assumptions.

## Repository Exploration

Repository exploration is allowed without user approval.

The agent may freely inspect files, directories, symbols, configuration, documentation, tests, Git state, and project structure.

Do not ask for permission merely to understand the repository.

## Preserve Existing Work

Never discard, overwrite, revert, or silently modify existing user changes.

Treat uncommitted changes as intentional unless there is clear evidence otherwise.

Preserve unrelated code and changes.

## Scope

Keep changes limited to the requested task.

Do not perform unrelated refactoring, reorganize the project unnecessarily, or introduce unrelated technologies, dependencies, or architectural changes.

## Validation

After modifying the repository:

1. Inspect the resulting diff.
2. Verify that changes are limited to the requested scope.
3. Run appropriate existing validation when permitted.
4. Report failures and limitations honestly.

Never hide, suppress, or misrepresent validation results.

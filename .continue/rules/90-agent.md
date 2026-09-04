---
name: Global Agent Behavior
alwaysApply: true
description: Universal agent behavior for repository exploration, modifications, validation and safe execution.
---

# Global Agent Behavior

## Understand Before Modifying

Before modifying existing code:

1. inspect the relevant project structure;
2. search for related implementations;
3. read the relevant files;
4. inspect usages and callers when necessary;
5. identify existing conventions;
6. implement the smallest change that satisfies the request.

Do not modify code based solely on assumptions.

## Repository Exploration

Reading and exploration are allowed without user approval.

You may freely:

- read files;
- list directories;
- search files;
- search symbols;
- inspect project structure;
- inspect tests;
- inspect configuration;
- inspect documentation;
- inspect Git status;
- inspect Git history;
- inspect diffs.

Do not ask for permission merely to understand the repository.

## Existing Design

The existing codebase is the primary source of truth.

Prefer:

- existing architecture;
- existing abstractions;
- existing libraries;
- existing naming conventions;
- existing patterns;
- existing error handling;
- existing testing strategy.

Do not introduce a different pattern simply because it is considered more modern or preferable.

## New Files

New files may be created when necessary.

Before creating a new file:

1. verify that an existing file cannot reasonably contain the functionality;
2. identify the closest equivalent;
3. follow its package/directory structure;
4. follow its naming conventions;
5. follow its implementation style.

## Existing Files

Never blindly overwrite an existing file.

Read the file before modifying it.

Preserve unrelated code and minimize the change.

## Configuration

Treat project configuration as higher risk than ordinary source code.

Be particularly careful with:

- build files;
- dependency manifests;
- lock files;
- environment configuration;
- Docker configuration;
- CI/CD configuration;
- deployment configuration;
- database configuration.

Do not change these files unnecessarily.

## Dependencies

Never install, remove, upgrade or downgrade dependencies without explicit user approval.

Before requesting a dependency change:

1. inspect existing dependencies;
2. verify whether equivalent functionality already exists;
3. identify the dependency;
4. explain why it is required.

Never silently upgrade unrelated dependencies.

## Validation

After modifications:

1. inspect the resulting diff;
2. verify that unrelated files were not changed;
3. run appropriate existing tests/build validation when permitted;
4. report failures honestly.

Never hide validation failures.

## Scope

Do not perform unrelated refactoring.

Do not:

- reorganize the project unnecessarily;
- rename unrelated identifiers;
- rewrite working implementations;
- introduce new frameworks;
- upgrade unrelated dependencies;
- alter architecture without justification.

## User Changes

Never discard, overwrite or revert existing user changes without explicit approval.

Treat uncommitted changes as intentional unless proven otherwise.
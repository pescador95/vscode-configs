---
name: Global Dependencies Rules
alwaysApply: true
description: Universal rules for safe and consistent dependency management across all projects.
---

# Dependencies Rules

## Source of Truth
The existing dependency configuration defines the project's libraries and frameworks.  
Do not introduce new dependencies without explicit approval.

## Adding Dependencies
Before adding a new dependency:
1. inspect the existing dependency list;
2. verify whether equivalent functionality already exists;
3. prefer reusing existing libraries;
4. explain why the new dependency is required.

Do not add dependencies merely because they are considered more modern or popular.

## Removing Dependencies
Never remove dependencies without explicit approval.  
Before removal:
- verify that the dependency is unused;
- confirm that no transitive usage exists;
- ensure that removal does not break builds or tests.

## Upgrading Dependencies
Do not upgrade or downgrade dependencies without explicit approval.  
Before requesting an upgrade:
- inspect the current version;
- verify compatibility with existing code;
- check for breaking changes;
- explain why the upgrade is necessary.

Never silently upgrade unrelated dependencies.

## Duplicates
Avoid introducing duplicate libraries that overlap in functionality.  
Prefer a single consistent library for each responsibility.

## Scope
Keep dependency changes focused on the requested task.  
Do not:
- reorganize build files unnecessarily;
- rewrite dependency manifests;
- introduce new package managers;
- alter unrelated configurations.

## Security
Do not add dependencies from untrusted sources.  
Prefer official repositories and verified packages.  
Never include libraries that expose secrets or weaken security boundaries.


---
name: Global Project Architecture
alwaysApply: true
description: Universal rules for preserving and extending the project's existing architecture and module boundaries.
---

# Architecture Rules

## Source of Truth

The existing implementation defines the architecture.

Do not infer a new architecture from generic software engineering principles when the repository already establishes a pattern.

Inspect existing modules, packages and dependencies before introducing new architectural structures.

## Layer Boundaries

Respect the project's existing separation of responsibilities.

Do not move business logic between layers unless required by the task.

Do not:

- place business logic in controllers or REST resources when the project uses services;
- place persistence logic in services when repositories are used;
- expose persistence entities directly when DTOs are the established API boundary;
- bypass established abstractions without a concrete reason.

Follow the pattern already used by equivalent components.

## Dependency Direction

Respect existing dependency boundaries.

Avoid:

- circular dependencies;
- unnecessary coupling;
- dependencies from lower-level components into higher-level application components;
- bypassing established interfaces or abstractions.

Before introducing a dependency between modules, inspect how similar dependencies are implemented elsewhere.

## Reuse

Prefer existing:

- services;
- repositories;
- interfaces;
- DTOs;
- mappers;
- utilities;
- exceptions;
- validators;
- configuration mechanisms.

Do not create a duplicate abstraction when an appropriate existing abstraction exists.

## New Components

When a new component is necessary:

1. Find the closest existing equivalent.
2. Follow its package location.
3. Follow its naming convention.
4. Follow its dependency pattern.
5. Follow its lifecycle and scope.
6. Follow its error-handling behavior.
7. Follow its testing pattern.

The new component should look as if it was written by the existing project maintainers.

## Refactoring

Do not perform architectural refactoring as part of an unrelated feature.

Architectural refactoring must be explicitly requested or clearly necessary for the requested behavior.
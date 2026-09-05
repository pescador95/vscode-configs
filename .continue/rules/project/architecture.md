---
name: Global Project Architecture
alwaysApply: false
description: Rules for preserving existing architectural boundaries, responsibilities, dependency direction, module structure, and design patterns when creating or modifying components, modules, layers, or dependencies.
---

# Architecture Rules

## Boundaries

Preserve the project's established module, package, layer, and responsibility boundaries.

Do not move responsibilities across established boundaries or bypass architectural abstractions without a concrete requirement.

## Dependencies

Preserve the established dependency direction between modules and layers.

Avoid circular dependencies, unnecessary coupling, and bypassing established interfaces or abstractions.

New dependencies must follow the project's existing architectural patterns.

## Architectural Changes

Do not introduce new architectural patterns or perform architectural refactoring unless explicitly requested or necessary to implement the required behavior.

Keep necessary architectural changes minimal and consistent with the existing structure.
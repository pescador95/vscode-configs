---
name: Global Project General Rules
alwaysApply: true
description: Core rules for preserving the existing project design, architecture, conventions and behavior.
---

# Project General Rules

## Primary Principle

The existing codebase is the source of truth.

Preserve the project's existing architecture, design, conventions, patterns and behavior unless the user explicitly requests a change.

Do not replace an established project pattern with a different pattern merely because it is considered more modern, cleaner or more idiomatic.

Consistency with the existing codebase has priority over personal preferences or generic best practices.

## Before Making Changes

Before modifying existing code:

1. Inspect the relevant project structure.
2. Read the files involved in the requested change.
3. Search for existing implementations with similar responsibilities.
4. Inspect relevant usages and callers when necessary.
5. Identify the established project pattern.
6. Implement the smallest change that satisfies the request.

Never modify existing code based solely on assumptions.

## Existing Implementations

Before creating a new:

- service;
- repository;
- DTO;
- mapper;
- utility;
- exception;
- configuration;
- abstraction;
- component;

search the codebase for an existing implementation that can reasonably be reused.

Prefer extending or reusing existing abstractions over introducing duplicates.

## Scope

Keep changes focused on the requested task.

Do not:

- refactor unrelated code;
- rename unrelated classes or methods;
- reorganize packages without necessity;
- replace working implementations;
- introduce new architectural patterns without justification;
- perform opportunistic cleanup;
- upgrade unrelated dependencies.

## Conventions

Follow the conventions already established by neighboring code.

This includes:

- naming;
- package organization;
- class structure;
- method organization;
- dependency injection;
- exception handling;
- logging;
- validation;
- DTO structure;
- persistence patterns;
- testing patterns;
- configuration patterns.

When uncertain, inspect similar existing code before deciding.

## Behavioral Compatibility

Preserve existing behavior unless the requested task explicitly requires changing it.

Avoid introducing breaking changes to:

- public APIs;
- REST endpoints;
- DTO contracts;
- database structures;
- configuration;
- authentication;
- authorization;
- integration contracts.

## Minimal Changes

Prefer the smallest correct change.

Do not rewrite an entire file when a localized modification is sufficient.

Preserve unrelated code, formatting and comments.

## Architecture Deviations

If the requested implementation conflicts with the existing architecture:

1. Identify the conflict.
2. Explain it briefly.
3. Prefer the existing architectural pattern unless the user explicitly requests a deviation.
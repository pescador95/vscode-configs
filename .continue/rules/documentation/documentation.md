---
name: Global Documentation Rules
alwaysApply: false
description: Rules for creating, updating, validating, and maintaining accurate project documentation based on implemented behavior, requirements, architecture, and established repository conventions.
---
# Documentation Rules

## Source of Truth

Documentation must accurately represent the current intended system.

Use the existing implementation, configuration, infrastructure, tests, requirements, and established documentation as evidence.

Never invent business rules, requirements, architecture, behavior, integrations, constraints, or technical details.

When documentation conflicts with the implementation, determine the current intended behavior before updating it.

## Existing Documentation

Preserve the project's established documentation structure, terminology, style, and conventions.

Reuse existing documentation instead of creating duplicate or conflicting sources.

Do not remove, substantially restructure, or overwrite unrelated documentation.

Update obsolete information when it is demonstrably no longer valid.

## Documentation Scope

Keep documentation changes limited to the requested scope.

Identify related documentation affected by functional, business, architectural, or technical changes and update it when necessary.

Use Markdown unless the project establishes another format.

## Codebase Analysis

Before creating or substantially modifying documentation, inspect the relevant project context.

Consider applicable:

* source code;
* modules and components;
* APIs and contracts;
* domain models;
* persistence and migrations;
* configuration;
* infrastructure;
* integrations;
* messaging;
* authentication and authorization;
* tests;
* CI/CD;
* existing documentation.

Documentation must reflect actual system boundaries and behavior.

## Traceability

Maintain useful traceability between requirements, acceptance criteria, implementation, and tests when practical.

Use references to relevant components, endpoints, modules, or tests when they provide meaningful traceability.

Do not create artificial references solely to satisfy documentation requirements.

## Architecture Decisions

Document significant architectural decisions using ADRs when appropriate.

An ADR should capture the context, problem, decision, alternatives, consequences, and relevant constraints.

Do not create ADRs for trivial implementation details.

## Sensitive Information

Never document secrets, credentials, tokens, private keys, passwords, connection credentials, or confidential data.

Use sanitized examples and placeholders.

## Quality

Documentation must be accurate, concise, objective, structured, consistent, technically precise, and independently understandable.

Avoid unsupported assumptions, duplication, obsolete examples, vague requirements, and unverifiable statements.
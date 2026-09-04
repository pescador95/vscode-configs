---

name: Global Documentation Rules
alwaysApply: true
description: Universal documentation standards for all projects. Documentation must accurately reflect the implemented business domains, requirements, architecture and behavior of the system.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Documentation Rules

## 1. Documentation as a Source of Truth

Repository documentation is part of the project specification and must accurately represent the current system.

* Treat existing documentation as authoritative project context.
* Do not remove, overwrite or substantially restructure existing documentation without a clear reason.
* Preserve unrelated documentation when making changes.
* Never document behavior, requirements or architecture that are not supported by the actual project.
* When documentation conflicts with the implementation, inspect the code and update the documentation when the implementation represents the current intended behavior.
* Do not assume business rules, requirements or architectural decisions that cannot be inferred from the project.

## 2. Documentation Structure

Documentation must be written as Markdown (`.md`) files and organized by purpose.

Use the following structure whenever applicable:

```text
docs/
├── business/
│   ├── domains/
│   │   ├── <domain>.md
│   │   └── ...
│   ├── requirements/
│   │   ├── <requirement>.md
│   │   └── ...
│   └── processes/
│       ├── <process>.md
│       └── ...
│
├── technical/
│   ├── architecture/
│   │   ├── overview.md
│   │   └── ...
│   ├── domains/
│   │   ├── <domain>.md
│   │   └── ...
│   ├── integrations/
│   │   ├── <integration>.md
│   │   └── ...
│   ├── infrastructure/
│   │   ├── <component>.md
│   │   └── ...
│   └── decisions/
│       ├── ADR-001-<decision>.md
│       └── ...
│
└── README.md
```

Do not create unnecessary directories. Adapt the structure to the project's existing organization when one already exists.

## 3. Business Documentation

Business documentation must describe the system from the perspective of its business domains, rules, processes and requirements.

When documenting a business domain, identify and document, when applicable:

* domain purpose;
* actors and responsibilities;
* business entities;
* business rules;
* workflows and processes;
* states and transitions;
* dependencies between domains;
* functional requirements;
* non-functional requirements;
* acceptance criteria;
* relevant validations and constraints;
* relevant integrations.

Business documentation must be based on the behavior implemented in the project.

Do not invent business requirements that are not supported by the available project context.

## 4. Technical Documentation

Technical documentation must describe how the system is implemented.

When applicable, document:

* architecture;
* modules and components;
* domain boundaries;
* APIs and contracts;
* data models;
* database schemas and relationships;
* authentication and authorization;
* external integrations;
* messaging and asynchronous processing;
* caching;
* configuration;
* infrastructure;
* deployment;
* observability;
* error handling;
* relevant technical constraints;
* architectural decisions.

Technical documentation must be derived from the actual source code, configuration and infrastructure definitions.

## 5. Requirements

Requirements documentation must distinguish between:

### Functional Requirements

Describe what the system must do from a functional or business perspective.

Each functional requirement should have:

* unique identifier;
* clear description;
* business context;
* preconditions, when applicable;
* expected behavior;
* relevant constraints;
* acceptance criteria.

### Non-Functional Requirements

Document applicable quality attributes and technical constraints, including:

* performance;
* availability;
* scalability;
* security;
* reliability;
* observability;
* maintainability;
* compatibility;
* data integrity;
* operational constraints.

Do not create non-functional requirements without evidence from project requirements, architecture, configuration or established technical constraints.

## 6. Acceptance Criteria

Requirements must include objective and verifiable acceptance criteria whenever applicable.

Acceptance criteria must:

* describe observable system behavior;
* be unambiguous;
* be testable;
* cover the relevant success and failure scenarios;
* reflect the actual implementation.

Prefer structured criteria such as:

```markdown
### Acceptance Criteria

- [ ] Given <precondition>, when <action>, then <expected result>.
- [ ] Given <precondition>, when <action>, then <expected result>.
```

Do not use vague criteria such as "works correctly" or "handles errors appropriately".

## 7. Codebase Analysis

Before creating or substantially updating documentation, inspect the relevant project context.

Consider, when applicable:

* source code;
* modules and packages;
* classes and interfaces;
* REST/API endpoints;
* services and use cases;
* domain models;
* repositories;
* database migrations;
* configuration files;
* infrastructure definitions;
* Docker and Compose files;
* Kubernetes manifests;
* CI/CD configuration;
* tests;
* existing documentation;
* integration clients;
* messaging configuration;
* authentication and authorization mechanisms.

Documentation must reflect the behavior and boundaries found in the codebase.

For domain documentation, inspect the complete relevant domain instead of relying on a single class, endpoint or module.

## 8. Documentation Generation

When asked to create documentation:

1. Inspect the existing documentation structure.
2. Identify the relevant business and technical domains.
3. Analyze the implementation related to those domains.
4. Reuse existing terminology and conventions.
5. Determine whether the requested information belongs to business or technical documentation.
6. Create the appropriate `.md` file in the appropriate directory.
7. Include requirements and acceptance criteria when the documentation describes functionality.
8. Include technical implementation details when documenting technical behavior.
9. Cross-reference related documentation when appropriate.
10. Verify that the resulting documentation is consistent with the implementation.

Do not create documentation based solely on the user's short description when the repository contains sufficient information to determine the actual behavior.

## 9. Documentation Updates

When modifying functionality, business rules or architecture:

* identify all affected documentation;
* update business documentation when business behavior changes;
* update technical documentation when implementation or architecture changes;
* update requirements and acceptance criteria when applicable;
* update examples that are affected by the change;
* preserve unrelated documentation;
* remove obsolete information when it is demonstrably no longer valid.

Documentation changes must remain consistent with the implementation.

## 10. Traceability

When practical, maintain traceability between:

```text
Business Domain
      ↓
Business Requirement
      ↓
Functional Requirement
      ↓
Acceptance Criteria
      ↓
Implementation
      ↓
Tests
```

Use references to relevant modules, components, endpoints, classes or tests when they provide useful traceability.

Do not introduce artificial references solely to satisfy this rule.

## 11. Architecture Decisions

Document significant architectural decisions using ADRs.

An ADR should include, when applicable:

* context;
* problem;
* decision;
* alternatives considered;
* consequences;
* technical or business constraints;
* status.

Do not create an ADR for trivial implementation details.

## 12. Consistency and Existing Standards

Follow the documentation style, terminology, naming conventions and structure already established in the repository.

Do not introduce a different documentation format when an established project convention exists.

When no convention exists, use clear Markdown with consistent headings, terminology and structure.

## 13. Documentation Quality

Documentation must be:

* accurate;
* concise;
* objective;
* structured;
* internally consistent;
* technically precise;
* easy to navigate;
* independently understandable.

Avoid:

* redundant explanations;
* unsupported assumptions;
* obsolete examples;
* implementation details in business documentation unless relevant;
* business concepts without technical evidence when documenting implementation;
* vague requirements;
* unverifiable acceptance criteria.

## 14. Sensitive Information

Never expose:

* secrets;
* credentials;
* access tokens;
* private keys;
* passwords;
* connection credentials;
* personal or confidential data.

Use placeholders, environment variables or sanitized examples instead.

## 15. Language

Use clear, concise and consistent language.

Prefer English unless the project explicitly uses another language.

Preserve established domain terminology even when it differs from general technical terminology.

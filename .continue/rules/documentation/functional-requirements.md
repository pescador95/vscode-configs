---
name: Functional and Non-Functional Requirements
alwaysApply: false
globs:
   - "**/requirements/**/*.md"
description: Rules for defining precise functional and non-functional system requirements.
---
# Requirements Rules

## Functional Requirements

Functional requirements describe observable system behavior.

Each requirement should define, when applicable:

* unique identifier;
* business purpose;
* actors or context;
* preconditions;
* expected behavior;
* inputs and outputs;
* business rules;
* constraints;
* exceptions;
* acceptance criteria.

Requirements must be specific, unambiguous, and verifiable.

## Non-Functional Requirements

Document applicable quality attributes and technical constraints, including:

* performance;
* availability;
* scalability;
* reliability;
* security;
* observability;
* maintainability;
* compatibility;
* data integrity;
* operational constraints.

Do not invent quantitative targets or quality requirements without supporting evidence.

When measurable criteria exist, define objective thresholds whenever the available requirements support them.

## Consistency

Functional and non-functional requirements must not contradict each other or established system constraints.

## Scope

These rules apply only when creating, modifying, reviewing, or validating
functional or non-functional requirements.

Do not apply these rules merely because the target file is a Markdown file.

Do not reinterpret technical or implementation documentation as requirements.

When documenting existing implementation:

- describe the behavior that is actually implemented;
- distinguish implemented behavior from required behavior;
- do not introduce business requirements that are not supported by evidence;
- do not convert implementation details into requirements.

When the document mixes requirements and implementation documentation,
keep the two concepts explicitly separated.
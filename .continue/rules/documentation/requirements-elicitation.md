---
name: Requirements Elicitation Rules
alwaysApply: false
globs: ["**/requirements/**/*.md", "**/requirements.md"]
description: Rules for eliciting, analyzing, structuring, validating, and documenting business and system requirements.
---
# Requirements Elicitation Rules

## Evidence

Requirements must be derived from available business context, existing documentation, implementation, domain terminology, stakeholder statements, and established project behavior.

Do not silently convert assumptions into requirements.

Clearly distinguish confirmed requirements from assumptions, constraints, questions, and unresolved decisions.

## Analysis

Identify, when applicable:

* business objective;
* actors and stakeholders;
* domain concepts;
* business rules;
* inputs and outputs;
* preconditions;
* postconditions;
* constraints;
* dependencies;
* exceptions;
* success and failure scenarios;
* integrations;
* security and compliance constraints;
* operational constraints.

## Completeness

Identify missing or ambiguous information that could materially change the required behavior.

Resolve ambiguity using existing project evidence when possible.

Ask for clarification when the requirement cannot be safely determined from available context.

## Consistency

Use established domain terminology and avoid introducing competing definitions for existing concepts.

Requirements must not contradict established business rules, technical constraints, or other documented requirements without explicitly identifying the conflict.

## Traceability

Requirements should be traceable to their business objective, acceptance criteria, implementation, and tests when practical.
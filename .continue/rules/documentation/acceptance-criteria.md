---
name: Acceptance Criteria Rules
alwaysApply: false
description: Rules for defining objective, testable, and unambiguous acceptance criteria for system behavior.
---
# Acceptance Criteria Rules

## Behavior

Acceptance criteria must describe observable and verifiable outcomes.

They must define the relevant success and failure behavior for the requirement.

## Structure

When applicable, use:

**Given** <precondition>
**When** <action>
**Then** <expected result>

Include relevant additional conditions using **And**.

## Quality

Acceptance criteria must be:

* objective;
* unambiguous;
* testable;
* specific;
* consistent with the requirement;
* consistent with the implemented behavior.

Cover relevant:

* happy paths;
* validation failures;
* business-rule violations;
* authorization failures;
* boundary conditions;
* relevant error scenarios.

Avoid vague criteria such as "works correctly", "handles errors", or "performs well".

Do not define criteria for behavior that is not part of the requirement.

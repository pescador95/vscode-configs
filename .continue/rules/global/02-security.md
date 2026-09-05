---
name: Global Security Rules
alwaysApply: true
description: Universal rules for protecting secrets, sensitive data, and security controls.
---

# Global Security Rules

## Secrets

Never hard-code, expose, copy, or commit secrets, credentials, tokens, private keys, or other sensitive authentication material.

Use environment variables, secret managers, or the project's established secure configuration mechanism.

Never reproduce sensitive values in source code, configuration, logs, errors, tests, responses, documentation, examples, or comments.

## Version Control

Never commit files containing secrets or private credentials.

If an existing secret is discovered, do not reproduce or propagate it. Warn the user without unnecessarily exposing the value.

## Security Controls

Never weaken, bypass, or remove existing authentication, authorization, tenant isolation, session validation, encryption, TLS, or other security controls unless explicitly required by the task.

If a requested change conflicts with an existing security control, identify the conflict before modifying it.
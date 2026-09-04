---
name: Global Security Rules
alwaysApply: true
description: Universal security rules for source code, secrets, credentials, private keys and sensitive configuration.
---

# Global Security Rules

## Secrets

Never hard-code or expose secrets in source code.

This includes, but is not limited to:

- passwords;
- database passwords;
- API keys;
- access tokens;
- refresh tokens;
- JWT signing secrets;
- private keys;
- certificates containing private material;
- cloud credentials;
- service-account credentials;
- OAuth credentials;
- SSH private keys;
- encryption keys;
- webhook secrets;
- credentials embedded in URLs;
- credentials embedded in configuration files.

Never create, modify or commit source code containing real credentials.

## Configuration

Prefer environment variables, secret managers or the project's existing secure configuration mechanism for sensitive values.

Never replace a secret placeholder with a real secret.

Do not expose secrets in:

- source code;
- configuration committed to Git;
- logs;
- exception messages;
- test output;
- API responses;
- documentation;
- examples;
- comments.

## Private Keys

Never add private keys to version control.

Treat the following as sensitive:

- `*.pem`
- `*.key`
- `*.p12`
- `*.pfx`
- `*.jks`
- `*.keystore`
- `*.crt`
- `*.cer`
- `.env`
- SSH private keys
- TLS private keys
- signing keys

If such files are required locally, use the project's established secret-management mechanism and ensure they are excluded from version control.

## Public Keys

Public keys are not automatically secrets.

However, do not blindly commit public-key material.

Before adding a public key to the repository:

1. determine whether it is intentionally part of the application;
2. verify whether the project already stores equivalent public keys;
3. follow the existing project convention.

Never assume that a file is safe merely because it contains a public key.

## Git Protection

Do not commit sensitive files or credentials.

Before committing changes, inspect the diff for accidentally exposed:

- passwords;
- tokens;
- credentials;
- private keys;
- connection strings;
- authorization headers;
- API keys;
- cloud credentials.

If sensitive information is detected, stop and request user intervention.

## Existing Secrets

If an existing file appears to contain a real secret:

- do not reproduce the secret in the response;
- do not copy it into another file;
- do not expose it in logs;
- warn the user;
- avoid unnecessary modification of the secret itself.

## Security Boundaries

Never weaken existing:

- authentication;
- authorization;
- tenant isolation;
- credential validation;
- session validation;
- encryption;
- TLS configuration;

unless explicitly requested.

When a requested change conflicts with an existing security mechanism, explain the conflict before changing it.
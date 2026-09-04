---
name: Global Git Rules
alwaysApply: true
description: Universal Git safety rules governing inspection, synchronization and history-changing operations.
---

# Git Rules

## Read-Only Git Operations

Git inspection commands may be executed when useful for understanding the repository.

Examples:

- `git status`
- `git diff`
- `git diff --cached`
- `git log`
- `git show`
- `git branch`
- `git remote -v`
- `git tag`
- `git ls-files`

## Safe Synchronization

The following operations may be executed when appropriate:

- `git fetch`
- `git pull`
- `git gc`

Before `git pull`, inspect the current working tree when relevant.

Do not discard local changes.

## Build and Validation

Read-only or local validation commands may be executed when allowed by the configured tool permissions.

Examples include:

- build;
- clean;
- compile;
- test;
- run;
- start;
- check;
- lint;
- format-check.

Follow the project's existing commands and tooling.

## User Approval Required

Never perform the following operations without explicit user approval:

- `git commit`
- `git merge`
- `git rebase`
- `git reset`
- `git revert`
- `git cherry-pick`
- `git push`
- force push;
- branch deletion;
- tag deletion;
- history rewriting.

## Database

Never execute database migrations without explicit user approval.

Never execute destructive database commands without explicit approval.

This includes:

- migrations;
- rollback;
- drop;
- truncate;
- delete without appropriate safeguards;
- schema modifications.

## Existing Changes

Before performing any Git operation that could affect working-tree or index state:

1. inspect `git status`;
2. inspect relevant diffs;
3. preserve existing user changes;
4. request approval when the operation can alter or discard them.

## Commit

Never create a commit automatically.

Before committing, wait for explicit user approval.

Never include unrelated changes in a commit.

## History

Never rewrite Git history without explicit user approval.
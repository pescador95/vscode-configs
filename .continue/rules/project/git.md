---
name: Global Git Rules
alwaysApply: false
description: Rules for safe Git inspection, synchronization, commits, history changes, and preservation of existing work.
---

# Git Rules

## Inspection

Use Git inspection commands when needed to understand repository state, changes, branches, history, or remotes.

Examples include:

* `git status`
* `git diff`
* `git diff --cached`
* `git log`
* `git show`
* `git branch`
* `git remote`
* `git tag`
* `git ls-files`

## Safe Operations

Read-only operations and safe synchronization may be performed when necessary.

Examples include:

* `git fetch`
* `git pull`
* `git gc`

Before synchronization, inspect the working tree when relevant.

Never discard, overwrite, or silently modify existing user changes.

## Existing Changes

Before any Git operation that may modify the working tree or index:

1. Inspect `git status`.
2. Inspect relevant diffs.
3. Preserve existing user changes.
4. Request approval if the operation may alter or discard them.

## Destructive or History-Changing Operations

Never perform without explicit user approval:

* `git commit`
* `git merge`
* `git rebase`
* `git reset`
* `git revert`
* `git cherry-pick`
* `git push`
* force push
* branch or tag deletion
* history rewriting

Never create a commit automatically.

Never include unrelated changes in a commit.

## Scope

Git operations must remain within the scope of the requested task.

Do not modify unrelated branches, commits, tags, remotes, repository configuration, or history.

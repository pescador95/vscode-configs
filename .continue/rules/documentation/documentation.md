---
name: Global Documentation Rules
alwaysApply: false
description: Governs documentation creation, maintenance, organization, validation, and repository changes.

---
# Documentation Rules

## Source of Truth

Documentation MUST reflect the current intended system.

Use the implementation, configuration, infrastructure, tests, requirements, architecture, and existing documentation as evidence.

MUST NOT invent behavior, requirements, business rules, architecture, integrations, constraints, or technical details.

When sources conflict, determine the current intended behavior before updating documentation.

## Existing Documentation

Preserve the repository's established:

* structure;
* terminology;
* naming;
* formatting;
* organization;
* conventions.

Prefer updating an existing authoritative document over creating duplicates.

MUST NOT modify or remove unrelated documentation.

## Scope

Documentation changes MUST remain within the requested scope.

Update related documentation only when the requested change actually affects it.

Do not expand the task unnecessarily.

## Organization

Before creating documentation, determine:

1. the appropriate domain;
2. the established directory;
3. the filename convention;
4. whether an authoritative document already exists.

MUST NOT create documentation in a new location merely for convenience.

Use Markdown unless the repository establishes another format.

## Documentation Task List

When `docs/todo_list.md` exists, it MUST be inspected before creating or substantially modifying documentation.

Use it to identify the relevant documentation target and its current completion state.

When the requested task corresponds to a task-list item:

1. Create or update the corresponding documentation.
2. Verify the documentation.
3. Update `docs/todo_list.md` after successful completion.
4. Preserve its existing format and completion convention.

For Markdown checkboxes:

* `[ ]` means pending.
* `[x]` means completed.
* Completed items MUST remain in the list.
* Change `[ ]` to `[x]` only after the corresponding documentation is successfully completed and verified.
* MUST NOT remove completed items unless the repository explicitly uses removal as its completion convention.

MUST NOT change the task list format merely to mark a task as completed.

If `docs/todo_list.md` does not exist, follow the repository's established structure and MUST NOT create a task list unless explicitly requested.

## Repository Changes

When documentation must be created, updated, moved, renamed, or deleted, use the available filesystem tools to perform the actual repository operation.

Before modifying files:

1. Inspect the relevant directories.
2. Locate the target documentation.
3. Inspect existing content when applicable.

After modifying files:

1. Verify the expected path.
2. Verify the resulting content.
3. Confirm that the change is within scope.

MUST NOT claim a repository change unless the corresponding filesystem operation was successfully executed and verified.

MUST NOT delete documentation unless explicitly required or clearly justified by the requested task.

## Validation

Before considering the task complete, verify that:

1. the documentation is in the correct location;
2. the content reflects the current intended system;
3. existing conventions were preserved;
4. no unsupported information was introduced;
5. related documentation was updated when necessary;
6. `docs/todo_list.md` was updated when applicable;
7. the resulting changes remain within scope.

## Sensitive Information

Documentation MUST NOT contain:

* secrets;
* credentials;
* passwords;
* private keys;
* access tokens;
* confidential information.

Use sanitized examples and placeholders when necessary.

## Completion

A documentation task is complete ONLY when the required documentation has been created or updated, the resulting files have been verified, and all applicable repository documentation updates have been completed.

MUST NOT claim completion when any required operation or verification remains incomplete.

## Execution

When the task requires a repository documentation change, the final result MUST be an actual filesystem change.

The agent MUST follow this sequence:

1. Inspect the target directory and existing documentation.
2. Determine the target file path.
3. Read the existing target file when it exists.
4. Generate the required documentation content.
5. Write or update the file using the filesystem tool.
6. Read the file again using the filesystem tool.
7. Verify that the content and path are correct.
8. If `docs/todo_list.md` applies, update its completion state.
9. Read `docs/todo_list.md` again and verify the change.
10. Only then consider the task complete.

Generating Markdown in the chat does NOT constitute a repository change.

MUST NOT report a documentation file as created or updated unless the filesystem write and subsequent verification succeeded.
# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Structure

This is a documentation repository for career guidance content, specifically focused on technical interview preparation. The structure is:

- `/interview-prep/` - Interview preparation guides organized by topic
  - `/resume-based/` - Guides for resume-focused interviews
    - Both markdown and PDF versions are maintained

## Content Guidelines

- This repository contains curated guides and resources under CC BY-NC-ND 4.0 license
- **NoDerivatives** clause means content cannot be modified or distributed in altered versions
- When editing existing content, ensure changes are improvements/corrections, not derivative works
- New content additions are acceptable as they're original works

## Git Commit Rules

- NEVER add "Generated with Claude Code" or any Claude attribution to commit messages
- NEVER add "Co-Authored-By: Claude" to commits
- Keep commit messages clean and professional without AI tool attribution

## Documentation Standards

- Avoid claiming "comprehensive" or similar superlatives unless the content truly justifies it
- Keep README structure simple and accurate to what actually exists in the repository
- When adding new guides, ensure both markdown and PDF versions are provided if PDF exists for other guides

## Git Commit Guide

**IMPORTANT**: When this guide is referenced, you must IMMEDIATELY execute the commit workflow below. Do NOT ask questions, do NOT wait for confirmation, do NOT offer choices. Just execute the workflow.

### CRITICAL GIT RULES

- **NEVER EVER RUN `git reset`** - This command is absolutely forbidden as it can destructively remove staged changes
- **NEVER use `git add -u`, `git add .`, or `git add -A`** - These stage files you don't want

### AUTOMATIC COMMIT WORKFLOW

When this file is referenced in the context of committing changes, execute the following steps IMMEDIATELY without asking any questions:

1. **Update CHANGELOG.md**:
   - Run `date +%Y-%m-%d` to get the current date in YYYY-MM-DD format
   - Add a new dated heading with format: `## YYYY-MM-DD - Brief Description`
   - Append the changes under appropriate sections (Added/Changed/Fixed/Documentation)
   - Keep entries concise and meaningful
   - Use past tense for completed work
2. **Stage ONLY tracked modified files**:
   - CRITICAL: Only stage files that are already tracked by git AND have been modified
   - Use `git diff --name-only` to see which tracked files have changed
   - Stage them individually with `git add <file1> <file2> ...`
   - NEVER use `git add -u` as it may include files you don't want
   - NEVER use `git add .` or `git add -A` as they stage untracked files
3. **Never stage new/untracked files** unless explicitly requested by the user
4. Review the changes with `git status` and `git diff --cached`
5. Create an appropriate commit message based on the actual changes made
6. **Stage CHANGELOG.md if it was modified**: `git add CHANGELOG.md`
7. Commit using `git commit -m "<message>"`
   - **CRITICAL**: Do NOT include any Claude Code references, co-authorship, or AI attribution in commit messages
   - Keep commit messages clean and professional without AI-generated footers
8. **Automatically push to remote** with `git push` - do not ask for permission

### CHANGELOG.md Format

Use this structure when appending to CHANGELOG.md:

```markdown
## YYYY-MM-DD - Brief Description

### Added
- New features or files added

### Changed
- Changes to existing functionality

### Fixed
- Bug fixes

### Documentation
- Documentation updates
```

Only include sections that are relevant to the current changes.

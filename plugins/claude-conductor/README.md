# Claude Conductor

Context-Driven Development framework for Claude Code. Plan, specify, and implement software features with AI assistance.

## Philosophy

**"Measure twice, code once"**

Conductor ensures a consistent, high-quality lifecycle for every task by following the protocol: **Context -> Spec & Plan -> Implement**.

## Installation

```bash
claude plugins install /path/to/v-marketplace/plugins/claude-conductor
```

## Commands

### `/claude-conductor:setup`

Initialize a project with Conductor. This interactive command will:
- Detect if the project is new (greenfield) or existing (brownfield)
- Create product definition (`product.md`)
- Define product guidelines (`product-guidelines.md`)
- Document technology stack (`tech-stack.md`)
- Configure development workflow (`workflow.md`)
- Generate the first track with spec and plan

### `/claude-conductor:new-track [description]`

Create a new feature or bug track. Guides you through:
- Interactive specification generation
- Automatic plan generation based on your workflow
- Track artifact creation (spec.md, plan.md, metadata.json)

### `/claude-conductor:implement [track-name]`

Execute tasks from a track's plan using Test-Driven Development:
- Automatically selects the next incomplete track
- Follows the TDD workflow (Red -> Green -> Refactor)
- Updates plan status and commits with git notes
- Synchronizes project documentation on completion

### `/claude-conductor:status`

Display project progress:
- Total phases and tasks
- Completed/In-Progress/Pending counts
- Current phase and task
- Blockers (if any)

### `/claude-conductor:revert [target]`

Git-aware intelligent revert:
- Revert entire tracks, phases, or individual tasks
- Handles rewritten history (rebase/squash)
- Presents execution plan before any changes

## Project Structure

After running `/claude-conductor:setup`, your project will have:

```
conductor/
├── product.md              # Product vision and goals
├── product-guidelines.md   # Brand, prose style, messaging
├── tech-stack.md           # Technology choices
├── workflow.md             # Development workflow (TDD)
├── code_styleguides/       # Language-specific style guides
├── tracks.md               # Master track index
└── tracks/
    └── <track_id>/
        ├── metadata.json   # Track metadata
        ├── spec.md         # Feature specification
        └── plan.md         # Implementation plan
```

## Workflow

1. **Setup**: Run `/claude-conductor:setup` to initialize
2. **Plan**: Run `/claude-conductor:new-track` to create a track
3. **Implement**: Run `/claude-conductor:implement` to execute tasks
4. **Review**: Run `/claude-conductor:status` to check progress
5. **Iterate**: Create new tracks as needed

## License

Apache-2.0

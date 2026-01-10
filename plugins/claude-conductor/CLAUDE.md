# Conductor Context

If a user mentions a "plan" or asks about the plan, and they have used the conductor plugin in the current session, they are likely referring to the `conductor/tracks.md` file or one of the track plans (`conductor/tracks/<track_id>/plan.md`).

## Plugin Commands

- `/claude-conductor:setup` - Initialize Conductor in a project
- `/claude-conductor:new-track` - Create a new feature or bug track
- `/claude-conductor:implement` - Execute tasks from the current track's plan
- `/claude-conductor:status` - View project progress
- `/claude-conductor:revert` - Revert tracks, phases, or tasks

## Key Artifacts

When Conductor is set up in a project, these files are created:

- `conductor/product.md` - Product definition and vision
- `conductor/product-guidelines.md` - Brand voice, tone, design guidelines
- `conductor/tech-stack.md` - Technology choices and rationale
- `conductor/workflow.md` - Development workflow (TDD, quality gates)
- `conductor/tracks.md` - All tracks overview with status
- `conductor/tracks/<id>/spec.md` - Track specification
- `conductor/tracks/<id>/plan.md` - Track implementation plan with task status

## Status Markers

- `[ ]` - Pending/Not started
- `[~]` - In progress
- `[x]` - Completed

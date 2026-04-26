# Linear Conductor Context

If a user mentions a "plan" or asks about the plan, and they have used the linear-conductor plugin in the current session, they are likely referring to the `conductor/tracks.md` file or one of the track plans (`conductor/tracks/<track_id>/plan.md`).

## Plugin Commands

- `/linear-conductor:setup` - Initialize Conductor in a project and configure Linear integration
- `/linear-conductor:new-track` - Create a new feature or bug track (synced to Linear)
- `/linear-conductor:implement` - Execute tasks from the current track's plan (updates Linear issue status)
- `/linear-conductor:status` - View project progress including Linear issue links
- `/linear-conductor:revert` - Revert tracks, phases, or tasks

## Key Artifacts

When Conductor is set up in a project, these files are created:

- `conductor/product.md` - Product definition and vision
- `conductor/product-guidelines.md` - Brand voice, tone, design guidelines
- `conductor/tech-stack.md` - Technology choices and rationale
- `conductor/workflow.md` - Development workflow (TDD, quality gates)
- `conductor/tracks.md` - All tracks overview with status and Linear issue links
- `conductor/tracks/<id>/spec.md` - Track specification
- `conductor/tracks/<id>/plan.md` - Track implementation plan with task status
- `conductor/integrations/linear.json` - Linear team/project configuration

## Status Markers

- `[ ]` - Pending/Not started
- `[~]` - In progress
- `[x]` - Completed

## Linear Sync

Every track is automatically synced to a Linear issue:
- Track created → Linear issue created (Backlog)
- Track started (`[~]`) → Linear issue moved to In Progress
- Track completed (`[x]`) → Linear issue moved to Done

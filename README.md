# V-Marketplace

A collection of Claude Code plugins for enhanced development workflows.

## Plugins

### claude-conductor

Context-Driven Development framework that transforms your repository into a single source of truth for AI-assisted development.

**Philosophy:** "Measure twice, code once"

**Commands:**
- `/claude-conductor:setup` - Initialize project with product definition, tech stack, and workflow
- `/claude-conductor:new-track` - Create a new feature or bug track with spec and plan
- `/claude-conductor:implement` - Execute tasks from the current track's plan using TDD
- `/claude-conductor:status` - View project progress and track status
- `/claude-conductor:revert` - Git-aware rollback of tracks, phases, or tasks

## Installation

```bash
# Install a plugin from this marketplace
claude plugins install /path/to/v-marketplace/plugins/claude-conductor
```

## License

Apache-2.0

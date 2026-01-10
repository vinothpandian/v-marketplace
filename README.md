# V-Marketplace

A Claude Code plugin marketplace with enhanced development workflow tools.

## Installation

Add this marketplace to Claude Code:

```bash
# From GitHub (when hosted)
/plugin marketplace add your-username/v-marketplace

# From local path
/plugin marketplace add /path/to/v-marketplace
```

Then install plugins:

```bash
/plugin install claude-conductor@v-marketplace
```

## Available Plugins

### claude-conductor

Context-Driven Development framework that transforms your repository into a single source of truth for AI-assisted development.

**Philosophy:** "Measure twice, code once"

**Commands:**
- `/claude-conductor:setup` - Initialize project with product definition, tech stack, and workflow
- `/claude-conductor:new-track` - Create a new feature or bug track with spec and plan
- `/claude-conductor:implement` - Execute tasks from the current track's plan using TDD
- `/claude-conductor:status` - View project progress and track status
- `/claude-conductor:revert` - Git-aware rollback of tracks, phases, or tasks

## Adding New Plugins

1. Create a new directory under `plugins/your-plugin-name/`
2. Add a `.claude-plugin/plugin.json` manifest
3. Add your plugin entry to `.claude-plugin/marketplace.json`

See the [Plugin Documentation](https://docs.anthropic.com/en/docs/claude-code/plugins) for details.

## License

Apache-2.0

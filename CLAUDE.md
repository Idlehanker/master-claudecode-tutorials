# Claude Code Tutorial — Multi-Skill Workflows

This is a learning project for Claude Code, demonstrating custom skills, plugins, hooks, and automated research workflows.

## Project Structure

- `.claude/skills/` — Project-level custom skills (hf-research-reporter, codebase-visualizer, summarize-changes)
- `.claude/hooks/` — Pre/post hooks for file protection and formatting
- `.claude/settings.json` — Permissions and hook configuration
- `my-first-plugin/` — Sample plugin with a hello-world skill
- `my-code-review-plugin/` — Plugin with a code review skill
- `reports/` — Generated markdown reports (HF papers, LLM leaderboard)

## Key Commands

- Leaderboard: `python3 .claude/skills/hf-research-reporter/scripts/fetch_leaderboard.py [top_n]`
- Codebase viz: `python3 .claude/skills/codebase-visualizer/scripts/visualize.py .`
- Formatting: Prettier runs automatically via PostToolUse hook on Edit/Write

## Conventions

- Python scripts use `requests`, `pandas`, `pyarrow` for data fetching
- Skills defined via SKILL.md with trigger phrases and usage instructions
- Plugins define metadata in `.claude-plugin/plugin.json`
- Settings: allow lists in `settings.json`, local overrides in `settings.local.json`

## Notes

- Open LLM Leaderboard data source is the archived `open-llm-leaderboard/contents` Parquet dataset
- HF paper search does not support weekly trending sort — reports note this limitation
- Leaderboard evaluates: IFEval, BBH, MATH Lvl 5, GPQA, MUSR, MMLU-PRO

# Claude Code Tutorial — Multi-Skill Workflows

A hands-on project demonstrating automated workflows using [Claude Code](https://claude.ai/code). Includes skills for Hugging Face research, code review, and codebase visualization.

## Project Structure

```
.claude/
  settings.json              # Claude Code permission rules & config
  settings.local.json        # Local permission overrides
  hooks/                     # Pre/post hook scripts for events
  skills/
    hf-research-reporter/    # HF research workflows (papers, leaderboard)
    codebase-visualizer/     # Interactive codebase tree visualization
my-code-review-plugin/
  skills/
    code-review/             # Custom code review skill (SKILL.md)
my-first-plugin/
  skills/
    hello/                   # Sample hello-world skill (SKILL.md)
reports/
  top10-report-weekly-nth.md          # HF notable papers report (May 2026)
  open-llm-leaderboard-snapshot.md    # LLM leaderboard top 10 snapshot (May 2026)
session-report-20260507-1656.html     # Claude Code usage analytics report
```

## Reports

- **HF Papers Report** — Top notable recent papers from Hugging Face, ranked by community engagement, with summaries and links
- **Open LLM Leaderboard Snapshot** — Top 10 models by average score across 6 benchmarks (IFEval, BBH, MATH Lvl 5, GPQA, MUSR, MMLU-PRO), plus per-benchmark leaders and architecture/type distribution

## Skills

### `hf-research-reporter`
Automates Hugging Face research tasks. Trigger with phrases like "search hugging face papers", "get leaderboard data", or "create a research report".

1. Searches HF papers via semantic queries with multi-strategy fallbacks
2. Fetches Open LLM Leaderboard v2 data from the `open-llm-leaderboard/contents` dataset Parquet
3. Saves structured markdown reports to a local directory

### `codebase-visualizer`
Generates an interactive HTML tree view showing your project's file structure with collapsible directories, file sizes, and type-based color coding.

### `code-review` (plugin)
Custom code review skill that analyzes pull request changes for quality and risk.

### `hello` (plugin)
Sample starter skill for building and testing new Claude Code skills.

## Benchmarks

The leaderboard evaluates models on 6 benchmarks averaged equally:

| Benchmark | Domain |
|-----------|--------|
| IFEval | Instruction following (0-100) |
| BBH | Big Bench Hard reasoning (0-100) |
| MATH Lvl 5 | Math competition level 5 (0-100) |
| GPQA | Graduate-level QA (0-100) |
| MUSR | Multi-step soft reasoning (0-100) |
| MMLU-PRO | Knowledge benchmark (0-100) |

## Usage

```bash
# In Claude Code, invoke skills:
/hf-research-reporter
/codebase-visualizer

# Or run scripts directly:
python3 .claude/skills/hf-research-reporter/scripts/fetch_leaderboard.py 10
python3 .claude/skills/codebase-visualizer/scripts/visualize.py .
```

## Notes

- The Open LLM Leaderboard Space has been sunset; data comes from the archived `open-llm-leaderboard/contents` Parquet (last updated 2025-03-20)
- HF paper search does not support a "weekly trending" sort — reports note this limitation

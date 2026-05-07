# Claude Code Tutorial — Hugging Face Research Workflows

A hands-on project demonstrating automated Hugging Face research workflows using [Claude Code](https://claude.ai/code). Includes reusable skills for fetching HF papers, snapshotting the Open LLM Leaderboard, and generating structured markdown reports.

## Project Structure

```
.claude/
  settings.json              # Global Claude Code permission rules
  settings.local.json        # Local permission overrides (HF API, git push, etc.)
  skills/
    hf-research-reporter/    # Reusable skill for HF research workflows
      SKILL.md               # Skill definition with instructions
      scripts/
        fetch_leaderboard.py # Fetches Open LLM Leaderboard Parquet -> JSON
      references/
        leaderboard-template.md  # Standard markdown template for reports
reports/
  top10-report-weekly-nth.md          # HF notable papers report (May 2026)
  open-llm-leaderboard-snapshot.md    # LLM leaderboard top 10 snapshot (May 2026)
session-report-20260507-1656.html     # Claude Code usage analytics report
```

## Reports

- **HF Papers Report** — Top notable recent papers from Hugging Face, ranked by community engagement, with summaries and links
- **Open LLM Leaderboard Snapshot** — Top 10 models by average score across 6 benchmarks (IFEval, BBH, MATH Lvl 5, GPQA, MUSR, MMLU-PRO), plus per-benchmark leaders and architecture/type distribution

## Skill: `hf-research-reporter`

This project includes a custom Claude Code skill for automating Hugging Face research tasks. Trigger it with phrases like "search hugging face papers", "get leaderboard data", or "create a research report". The skill:

1. Searches HF papers via semantic queries with multi-strategy fallbacks
2. Fetches Open LLM Leaderboard v2 data from the `open-llm-leaderboard/contents` dataset Parquet
3. Saves structured markdown reports to a local directory

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
# In Claude Code, invoke the skill:
/hf-research-reporter

# Or run the fetch script directly:
python3 .claude/skills/hf-research-reporter/scripts/fetch_leaderboard.py 10
```

## Notes

- The Open LLM Leaderboard Space has been sunset; data comes from the archived `open-llm-leaderboard/contents` Parquet (last updated 2025-03-20)
- HF paper search does not support a "weekly trending" sort — reports note this limitation

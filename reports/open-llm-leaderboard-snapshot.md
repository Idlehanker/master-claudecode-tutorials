# Open LLM Leaderboard Snapshot

**Source:** [open-llm-leaderboard/contents](https://huggingface.co/datasets/open-llm-leaderboard/contents) (Parquet export)
**Snapshot Date:** 2026-05-07
**Dataset Last Updated:** 2025-03-20
**Total Models:** 4,576

---

## Top 10 Models by Average Score

| # | Model | Avg | IFEval | BBH | MATH Lvl 5 | GPQA | MUSR | MMLU-PRO | Params | Type | Likes |
|---|-------|:---:|:------:|:---:|:----------:|:----:|:----:|:--------:|:------:|:----:|:-----:|
| 1 | MaziyarPanahi/calme-3.2-instruct-78b | 52.1 | 80.6 | 62.6 | 40.3 | 20.4 | 38.5 | 70.0 | 78.0B | fine-tuned | 112 |
| 2 | MaziyarPanahi/calme-3.1-instruct-78b | 51.3 | 81.4 | 62.4 | 39.3 | 19.5 | 36.5 | 68.7 | 78.0B | chat (RLHF/DPO) | 4 |
| 3 | dfurman/CalmeRys-78B-Orpo-v0.1 | 51.2 | 81.6 | 61.9 | 40.6 | 20.0 | 36.4 | 66.8 | 78.0B | chat (RLHF/DPO) | 72 |
| 4 | MaziyarPanahi/calme-2.4-rys-78b | 50.8 | 80.1 | 62.2 | 40.7 | 20.4 | 34.6 | 66.7 | 78.0B | chat (RLHF/DPO) | 46 |
| 5 | huihui-ai/Qwen2.5-72B-Instruct-abliterated | 48.1 | 85.9 | 60.5 | 60.1 | 19.4 | 12.3 | 50.4 | 72.7B | fine-tuned | 10 |
| 6 | Qwen/Qwen2.5-72B-Instruct | 48.0 | 86.4 | 61.9 | 59.8 | 16.7 | 11.7 | 51.4 | 72.7B | chat (RLHF/DPO) | 777 |
| 7 | MaziyarPanahi/calme-2.1-qwen2.5-72b | 47.9 | 86.6 | 61.7 | 59.1 | 15.1 | 13.3 | 51.3 | 72.7B | chat (RLHF/DPO) | 1 |
| 8 | newsbang/Homer-v1.0-Qwen2.5-72B | 47.5 | 76.3 | 62.3 | 49.0 | 22.1 | 17.9 | 57.2 | 72.7B | fine-tuned | 6 |
| 9 | ehristoforu/qwen2.5-test-32b-it | 47.4 | 78.9 | 58.3 | 59.7 | 15.2 | 19.1 | 52.9 | 32.8B | chat (RLHF/DPO) | 9 |
| 10 | Saxo/Linkbricks-Horizon-AI-Avengers-V1-32B | 47.3 | 79.7 | 57.6 | 60.3 | 15.0 | 18.2 | 53.3 | 32.8B | fine-tuned | 6 |

---

## Best in Individual Benchmarks

| Benchmark | Top Model | Score |
|-----------|-----------|:-----:|
| IFEval (Instruction Following) | meta-llama/Llama-3.3-70B-Instruct | 90.0 |
| BBH (Big Bench Hard) | qingy2024/Benchmaxx-Llama-3.2-1B-Instruct | 76.7 |
| MATH Lvl 5 | nvidia/AceMath-72B-Instruct | 71.5 |
| GPQA (Graduate-level QA) | Steelskull/L3.3-MS-Nevoria-70b | 29.4 |
| MUSR (Multi-step Soft Reasoning) | JungZoona/T3Q-Qwen2.5-14B-Instruct-1M-e3 | 38.7 |
| MMLU-PRO | MaziyarPanahi/calme-3.2-instruct-78b | 70.0 |

---

## Architecture Breakdown (Top 10)

| Architecture | Count | % |
|-------------|:-----:|:--:|
| LlamaForCausalLM | 1,849 | 40.4% |
| Qwen2ForCausalLM | 1,308 | 28.6% |
| MistralForCausalLM | 615 | 13.4% |
| Gemma2ForCausalLM | 248 | 5.4% |
| MixtralForCausalLM | 80 | 1.7% |
| Qwen2Model | 73 | 1.6% |
| Phi3ForCausalLM | 67 | 1.5% |
| Unknown | 49 | 1.1% |
| PhiForCausalLM | 30 | 0.7% |
| GemmaForCausalLM | 30 | 0.7% |

---

## Model Type Distribution

| Type | Count | % |
|------|:-----:|:--:|
| Fine-tuned (domain-specific) | 1,785 | 39.0% |
| Base merges & moerges | 1,724 | 37.7% |
| Chat (RLHF/DPO/IFT) | 718 | 15.7% |
| Pretrained | 275 | 6.0% |
| Continuously pretrained | 58 | 1.3% |
| Multimodal | 9 | 0.2% |
| Other | 7 | 0.2% |

---

## Leaderboard Overview

- **Total models evaluated:** 4,576
- **Parameter range:** 0.1B – 140.6B
- **Average score range:** 0.7 – 52.1
- **Benchmarks:** IFEval (instruction following), BBH (reasoning), MATH Lvl 5 (math), GPQA (graduate QA), MUSR (multi-step reasoning), MMLU-PRO (knowledge)
- **Average score formula:** (IFEval + BBH + MATH Lvl 5 + GPQA + MUSR + MMLU-PRO) / 6

*Note: The open-llm-leaderboard space has been sunset. This snapshot was taken from the archived dataset `open-llm-leaderboard/contents` (last updated March 2025). For the latest leaderboard, see the [Open VLM Leaderboard](https://hf.co/spaces/opencompass/open_vlm_leaderboard) or [Big Code Models Leaderboard](https://hf.co/spaces/bigcode/bigcode-models-leaderboard).*

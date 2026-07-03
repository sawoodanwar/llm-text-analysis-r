# LLM-based Text Analysis Scripts in R

This directory groups R scripts for using LLMs in text analysis and evaluation workflows.

## Files

- `llm_text_labeling.R`: Functions for prompting LLMs to produce labels or summaries for text documents.
- `llm_topic_modeling_support.R`: Utilities combining embedding-based topic modeling with LLM label refinement.
- `evaluation_metrics.R`: Functions for computing agreement (e.g., Cohen's kappa), accuracy, F1, and related metrics.

## llm_text_labeling.R

This script typically includes:

- Helper functions to build prompts for classification, summarization, or coding tasks.
- Wrappers around an LLM API client to send text and receive responses.
- Utilities for post-processing LLM outputs (e.g., fixed label sets, parsing JSON).

## llm_topic_modeling_support.R

This script is designed to work alongside embedding-based topic models:

- Accepts topic representations and example documents.
- Uses LLMs to suggest human-readable labels or merges/splits.
- Supports iterative refinement of topic interpretations.

## evaluation_metrics.R

This script provides evaluation utilities for comparing human and LLM labels:

- Agreement metrics such as Cohen's kappa.
- Basic classification metrics (precision, recall, F1, accuracy).
- Support for confusion matrices and error inspection.

## Usage

Source the scripts and then integrate functions into your analysis workflows, e.g.:

```r
source("R/llm_text_labeling.R")
source("R/llm_topic_modeling_support.R")
source("R/evaluation_metrics.R")
```

Combine these with the API client utilities from [llm-api-research-r](https://github.com/sawoodanwar/llm-api-research-r) for end-to-end pipelines.

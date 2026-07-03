# LLM-based Text Analysis and Evaluation with R

This repository contains R-focused workflows, scripts, and examples for using Large Language Models (LLMs) in text analysis, evaluation, and measurement tasks for media and communication data.

## Goals

- Provide R scripts for LLM-assisted topic modeling, clustering, and labeling workflows.
- Offer reproducible pipelines for sentiment analysis, stance detection, and qualitative coding support.
- Demonstrate evaluation setups (e.g., human vs LLM labels, inter-rater reliability, error analysis).
- Connect to related repositories in the Sawood Anwar GitHub profile, including LLM API integration and thesis-related work.

## Repository Structure

- `R/`
  - `llm_text_labeling.R`: Helpers for using LLMs to generate labels or summaries for text documents.
  - `llm_topic_modeling_support.R`: Utilities that combine embedding-based topic modeling (e.g., BERTopic) with LLM-based label refinement.
  - `evaluation_metrics.R`: Functions for computing agreement (e.g., Cohen's kappa), accuracy, F1, and other metrics.
- `data/`
  - `README_data.md`: Notes on data formats (CSV), anonymization considerations, and example schemas for media and social media texts.
  - `example_texts.csv`: Small synthetic dataset of COVID-19 news texts with human labels for quick testing.
- `examples/`
  - `covid_news_reactions_llm_text_analysis.R`: Example inspired by PhD thesis data (COVID-19 news and Facebook reactions).
  - `annotation_workflow_demo.R`: Demonstrates an LLM-supported coding/annotation workflow for a small text corpus.

## Data Notes

Input data is assumed to be in CSV format with textual fields (e.g., `post_text`, `headline`, `article_body`) and optional metadata (e.g., `page_name`, `created_at`, reaction counts). Data must be **properly anonymized and ethically sourced**, respecting platform policies and IRB/ethics committee guidelines.

See `data/README_data.md` for more information.

## Cross-links to Related Repositories

- LLM API integration with R: [llm-api-research-r](https://github.com/sawoodanwar/llm-api-research-r)
- BERTopic topic modeling workflows: [bertopic-media-topics](https://github.com/sawoodanwar/bertopic-media-topics)
- Profile and other research repositories: [GitHub profile](https://github.com/sawoodanwar)

Together with `llm-api-research-r` and `bertopic-media-topics`, this repository is part of a small computational communication toolkit for LLMs and topic modeling.

## Example Usage

A minimal example of running LLM-based labeling and agreement computation over the synthetic texts:

```r
library(readr)
source("R/llm_text_labeling.R")
source("R/evaluation_metrics.R")

texts <- read_csv("data/example_texts.csv")

# Assume LLM client functions from llm-api-research-r have been sourced
labeled <- llm_label_texts(texts, text_col = "text", model = "gpt-4.1-mini")

agreement_results <- compute_basic_agreement(labeled)
print(agreement_results$confusion)
print(agreement_results$agreement)
```

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/sawoodanwar/llm-text-analysis-r.git
   ```
2. Install R packages:
   - `tidyverse`
   - `jsonlite`
   - `readr`
   - `text2vec` or other embedding packages (optional)

3. Set up your LLM API client:
   - Use functions from [llm-api-research-r](https://github.com/sawoodanwar/llm-api-research-r) or your own client.

4. Run an example script, e.g.:
   ```r
   source("R/covid_news_reactions_llm_text_analysis.R")
   ```

## License

This repository is licensed under the MIT License. See `LICENSE` for details.

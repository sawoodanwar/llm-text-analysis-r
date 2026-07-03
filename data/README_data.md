# Data README for LLM-based Text Analysis and Evaluation with R

This directory documents data formats and considerations for LLM-supported text analysis and evaluation workflows.

## Expected Data Formats

Common CSV inputs include:

- `doc_id`: Unique identifier for each text unit (post, article, comment).
- `source`: Outlet, platform, or corpus name.
- `text`: Main textual field subject to analysis (headline, post, article body).
- `created_at`: Timestamp in ISO format (optional).
- `label_human`: Human-coded label (topic, sentiment, stance, etc.).
- `label_llm`: LLM-generated label or summary.

Additional metadata can include reaction counts, engagement metrics, or context fields depending on the research design.

## Privacy and Ethics

- Remove or pseudonymize direct identifiers.
- Follow institutional ethics/IRB guidelines for human-coded datasets.
- Avoid uploading raw, sensitive datasets to the public repository.

## Example Files

- `example_texts.csv`: Small illustrative dataset showing human and LLM labels for evaluation.

## Related Repositories

- LLM API integration utilities in R: [llm-api-research-r](https://github.com/sawoodanwar/llm-api-research-r)

# BERTopic topic modeling support (stub)

#' Placeholder functions for integrating BERTopic outputs with LLM-based workflows
#'
#' These functions are stubs and can be extended to:
#' - read BERTopic topic representations
#' - use LLMs to suggest human-readable labels
#' - merge or split topics based on qualitative inspection.

#' Read BERTopic topic info
#'
#' @param path Path to bertopic_topic_info.csv.
#' @return A tibble with topic information.
read_bertopic_info <- function(path = "data/bertopic_topic_info.csv") {
  if (!file.exists(path)) {
    stop(sprintf("File '%s' not found. Run bertopic_fit.py first.", path))
  }
  readr::read_csv(path)
}

#' Stub function for refining topic labels with an LLM
#'
#' @param topic_info Tibble with topic information.
#' @return Tibble with an added `label_llm` column (currently NA).
refine_topic_labels_with_llm <- function(topic_info) {
  topic_info$label_llm <- NA_character_
  # In a full implementation, you would iterate over topics and
  # call an LLM client to propose labels based on top words.
  topic_info
}

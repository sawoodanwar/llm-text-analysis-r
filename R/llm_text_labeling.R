# LLM-based text labeling helpers

#' Apply an LLM-based labeling function to a data frame of texts
#'
#' This is a stub implementation that assumes you have sourced
#' an LLM client from the llm-api-research-r repository, such as
#' `llm_call_safe()` and `llm_extract_text()`.
#'
#' @param df A data.frame or tibble containing text data.
#' @param text_col Name of the text column.
#' @param model Character model name.
#' @return The input data frame with an added `label_llm` column.
llm_label_texts <- function(df,
                            text_col = "text",
                            model = "gpt-4.1-mini") {
  if (!text_col %in% names(df)) {
    stop(sprintf("Column '%s' not found in data frame.", text_col))
  }

  if (!exists("llm_call_safe")) {
    stop("llm_call_safe() not found. Please source LLM client functions from llm-api-research-r.")
  }

  df$label_llm <- NA_character_

  for (i in seq_len(nrow(df))) {
    txt <- df[[text_col]][i]
    res <- llm_call_safe(txt, model = model)
    df$label_llm[i] <- if (is.list(res)) llm_extract_text(res) else NA_character_
  }

  df
}

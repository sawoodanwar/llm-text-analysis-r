# Evaluation metrics for human vs LLM labels (stub)

#' Compute simple agreement and confusion matrix between human and LLM labels
#'
#' @param df Data frame with `label_human` and `label_llm` columns.
#' @return A list containing a confusion table and proportion agreement.
compute_basic_agreement <- function(df) {
  if (!all(c("label_human", "label_llm") %in% names(df))) {
    stop("Data frame must contain 'label_human' and 'label_llm' columns.")
  }

  df <- df[!is.na(df$label_human) & !is.na(df$label_llm), ]
  tab <- table(df$label_human, df$label_llm)
  agree <- sum(diag(tab)) / sum(tab)

  list(confusion = tab, agreement = agree)
}

#' Placeholder for Cohen's kappa
#'
#' In a full implementation, you can extend this to compute Cohen's kappa
#' or other reliability metrics using packages such as `irr` or `psych`.
compute_cohens_kappa_stub <- function(df) {
  warning("Cohen's kappa stub: please implement using irr::kappa2 or similar.")
  NA_real_
}

# Create summary table (mean, sd for numeric variables)
load("data/dat_clean.RData")
is_num <- sapply(clean, is.numeric)
num_df <- clean[, is_num, drop = FALSE]

table1 <- data.frame(
  variable = names(num_df),
  mean = sapply(num_df, function(x) mean(x, na.rm = TRUE)),
  sd   = sapply(num_df, function(x) sd(x,   na.rm = TRUE)),
  row.names = NULL,
  check.names = FALSE
)

dir.create("output", showWarnings = FALSE, recursive = TRUE)
write.csv(table1, "output/table_summary.csv", row.names = FALSE)
message("Wrote table -> output/table_summary.csv")

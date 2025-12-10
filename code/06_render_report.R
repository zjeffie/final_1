# Render the final report
if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop("Please install.packages('rmarkdown') to render the report.")
}
rmarkdown::render(
  input = "report/report.Rmd",
  output_file = "report.html",
  output_dir = "output"
)

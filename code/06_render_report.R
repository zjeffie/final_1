# Render the final report
if (!requireNamespace("rmarkdown", quietly = TRUE)) {
  stop("Please install.packages('rmarkdown') to render the report.")
}
rmarkdown::render("report/report.Rmd", output_format = "html_document")

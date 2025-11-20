all: output/report.html

output/report.html: code/01_load_data.R code/02_clean_data.R code/03_make_tables.R code/04_make_figures.R code/06_render_report.R data/fetal_health.csv
	Rscript code/06_render_report.R

install:
	R -e "renv::restore(prompt = FALSE)"


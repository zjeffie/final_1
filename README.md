#Final Project – Data 550
Repository Structure
final_project/
├── data/       # Dataset used in analysis
├── code/       # All R scripts for data processing, tables, figures, reporting
├── output/     # Generated tables and figures
├── report/     # Final R Markdown report
├── Makefile    # Build instructions
└── README.md   # Documentation

# How to Generate the Final Report

From the root folder of the repository, run:

make report


This command will automatically:

Load the dataset

Clean and prepare the data

Create the summary tables

Generate the figures

Render the final report (report/report.Rmd) into HTML

All steps are executed through the script:

code/06_render_report.R

#Where Table Code Is Located

All table creation code is stored in:

code/03_make_tables.R


This script creates:

output/table_summary.csv

#Where Figure Code Is Located

Figure generation code is stored in:

code/04_make_figures.R


This script creates:

output/figure_histogram.png

#Data

The dataset used in this project is stored in:

data/fetal_health.csv


If required, a synthetic dataset with the same structure may be used instead.

#Report

The final analysis report is written in:

report/report.Rmd


It includes:

Introduction

Methods

Summary table

Histogram figure

Discussion

Reproducibility instructions

#Build Instructions (Summary)

Run:

make report
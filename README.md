# Final Project – Data 550

## Repository Structure

final_project/
├── data/       # Dataset used in analysis  
├── code/       # All R scripts for data processing, tables, figures, reporting  
├── output/     # Generated tables and figures  
├── report/     # Final R Markdown report  
├── Dockerfile  # Docker image configuration  
├── Makefile    # Build instructions  
└── README.md   # Documentation  

---

# How to Generate the Final Report (Local Makefile Version)

From the root folder of the repository, run:

```bash
make report
This command will automatically:

Load the dataset

Clean and prepare the data

Create the summary tables

Generate the figures

Render the final report (report/report.Rmd) into HTML

All steps are executed through the script:
code/06_render_report.R
The final output will be saved to:
output/report.html
Docker-Based Reproducible Workflow (Required for the Course)

To ensure full reproducibility, this project includes a Dockerfile and a Makefile target using Docker.

1. Pull the Docker image (or build locally)
docker pull zjeffie/final_1:latest
# or build:
docker build -t zjeffie/final_1:latest .


DockerHub repository link:
https://hub.docker.com/r/zjeffie/final_1

2. Generate the report using Docker

From the project root directory, run:

make docker-report


This command will:

Launch a Docker container

Mount the local output/ folder

Run code/06_render_report.R inside the container

Render report/report.Rmd

Save the final HTML report to output/report.html

This ensures that anyone can reproduce your results without installing R or any packages.

Where Table Code Is Located

All table creation code is stored in:

code/03_make_tables.R


This script creates:

output/table_summary.csv

Where Figure Code Is Located

Figure generation code is stored in:

code/04_make_figures.R


This script outputs figures such as:

output/figure_histogram.png

Data

The dataset used in this project is stored in:

data/fetal_health.csv


If required, a synthetic dataset with the same structure may be used instead.

Report

The final analysis report is written in:

report/report.Rmd


It includes:

Introduction

Methods

Summary table

Histogram figure

Discussion

Reproducibility instructions

Build Instructions (Summary)
Local build
make report

Docker reproducible build (preferred)
make docker-report


Output saved in:

output/report.html

End of README


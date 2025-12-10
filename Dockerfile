FROM rocker/r-ver:4.4.1

# Disable renv auto-activation inside Docker
ENV RENV_ACTIVATE_PROJECT=FALSE

RUN apt-get update && apt-get install -y \
    pandoc \
    && rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c( \
    'rmarkdown', \
    'knitr', \
    'tidyverse', \
    'ggplot2', \
    'dplyr', \
    'readr' \
), repos='https://cloud.r-project.org')"

WORKDIR /project
COPY . /project

CMD ["Rscript", "code/06_render_report.R"]



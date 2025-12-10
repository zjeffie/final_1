# Use system-independent path for output directory
REPORT_DIR=$(shell pwd)/output

ifeq ($(OS),Windows_NT)
    REPORT_DIR=/${REPORT_DIR}
endif

# ---- MAIN TARGET ----
docker-report:
	mkdir -p output
	docker run --rm \
		-v $(REPORT_DIR):/project/output \
		zjeffie/final_1:latest \
		bash -c "Rscript code/06_render_report.R"

# ---- OPTIONAL: local build (not required by instructor) ----
local:
	Rscript code/06_render_report.R

# ---- OPTIONAL: local install of dependencies ----
install:
	R -e "renv::restore(prompt = FALSE)"



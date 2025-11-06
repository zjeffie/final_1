# Load dataset from data/, save as RData for downstream steps
data_path <- if (file.exists("data/fetal_health.csv")) {
  "data/fetal_health.csv"
} else if (file.exists("data/fake_fetal_health.csv")) {
  "data/fake_fetal_health.csv"
} else {
  stop("No dataset found in data/. Expected fetal_health.csv or fake_fetal_health.csv")
}

dat <- read.csv(data_path, check.names = FALSE)
save(dat, file = "data/dat_loaded.RData")
message("Loaded: ", data_path, " -> data/dat_loaded.RData")

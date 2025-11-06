# Minimal cleaning: lower-case names, drop missing rows
load("data/dat_loaded.RData")
clean <- dat
names(clean) <- tolower(names(clean))
clean <- na.omit(clean)
save(clean, file = "data/dat_clean.RData")
message("Saved cleaned data -> data/dat_clean.RData")

# Make a histogram for the first numeric column
load("data/dat_clean.RData")
is_num <- sapply(clean, is.numeric)
num_cols <- names(clean)[is_num]
if (length(num_cols) == 0) stop("No numeric columns to plot.")

xvar <- num_cols[1]
png("output/figure_histogram.png", width = 800, height = 500)
hist(clean[[xvar]], main = paste("Distribution of", xut/figure_histogram.png")

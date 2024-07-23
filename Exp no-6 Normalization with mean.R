# Value to normalize
value <- 35

# Assumed values for min-max normalization
min_age <- 22
max_age <- 105

# Min-Max Normalization
min_max_normalized <- (value - min_age) / (max_age - min_age)

# Z-Score Normalization
mean_age <- 60
std_dev_age <- 12.94
z_score_normalized <- (value - mean_age) / std_dev_age

# Decimal Scaling Normalization
# Find the scaling factor (10^k) such that scaled value falls in the range [0, 1)
# For the value 35, determine the maximum value in the data to choose the scaling factor
# Assuming the max value in the dataset is 105 for decimal scaling
scaling_factor <- 10^floor(log10(max_age))
decimal_scaled_normalized <- value / scaling_factor

# Print the results
cat("Min-Max Normalized Value:", min_max_normalized, "\n")
cat("Z-Score Normalized Value:", z_score_normalized, "\n")
cat("Decimal Scaled Normalized Value:", decimal_scaled_normalized, "\n")

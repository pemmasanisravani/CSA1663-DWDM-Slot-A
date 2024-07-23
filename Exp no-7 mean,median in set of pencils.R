# Create a vector with the number of pencils in each box
pencils <- c(9, 25, 23, 12, 11, 6, 7, 8, 9, 10)

# Calculate mean
mean_pencils <- mean(pencils)

# Calculate median
median_pencils <- median(pencils)

# Calculate mode (using a custom function)
# There might be more than one mode; this function returns all modes
get_mode <- function(x) {
  uniq_x <- unique(x)
  freq <- table(x)
  modes <- uniq_x[freq == max(freq)]
  return(modes)
}

mode_pencils <- get_mode(pencils)

# Print results
cat("Mean number of pencils:", mean_pencils, "\n")
cat("Median number of pencils:", median_pencils, "\n")
cat("Mode number of pencils:", paste(mode_pencils, collapse = ", "), "\n")

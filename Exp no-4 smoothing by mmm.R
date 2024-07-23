data <- c(11, 13, 13, 15, 15, 16, 19, 20, 20, 20, 21, 21, 22, 23, 24, 30, 40, 45, 45, 45, 71, 72, 73, 75)
bins <- list(
  data[1:6],
  data[7:12],
  data[13:18],
  data[19:24]
)
bin_means <- lapply(bins, mean)
smoothed_by_mean <- unlist(lapply(seq_along(bins), function(i) rep(bin_means[[i]], length(bins[[i]]))))
bin_medians <- lapply(bins, median)
smoothed_by_median <- unlist(lapply(seq_along(bins), function(i) rep(bin_medians[[i]], length(bins[[i]]))))
smoothed_by_boundaries <- unlist(lapply(bins, function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - min_val) <= abs(x - max_val), min_val, max_val))
}))
smoothed_by_mean
smoothed_by_median
smoothed_by_boundaries
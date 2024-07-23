marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)
n_bins <- 3
bins_eq_freq <- cut(marks, breaks = quantile(marks, probs = 0:n_bins / n_bins, na.rm = TRUE), include.lowest = TRUE, labels = FALSE)
hist(marks, breaks = quantile(marks, probs = 0:n_bins / n_bins, na.rm = TRUE), main = "Histogram with Equal-Frequency Bins", xlab = "Marks", col = "lightblue", border = "black")
dev.copy(png, filename = "histogram_eq_freq_bins.png")
dev.off()
range_marks <- range(marks)
width <- (range_marks[2] - range_marks[1]) / n_bins
bins_eq_width <- cut(marks, breaks = seq(range_marks[1], range_marks[2], by = width), include.lowest = TRUE, labels = FALSE)
hist(marks, breaks = seq(range_marks[1], range_marks[2], by = width), main = "Histogram with Equal-Width Bins", xlab = "Marks", col = "lightgreen", border = "black")
dev.copy(png, filename = "histogram_eq_width_bins.png")
dev.off()
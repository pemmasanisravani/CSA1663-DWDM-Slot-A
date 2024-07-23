# Example data (replace with actual data)
age <- c(22, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75, 80, 85, 90, 95, 100, 105)
fat <- c(15, 20, 18, 22, 24, 25, 30, 28, 35, 40, 42, 45, 50, 55, 60, 65, 70, 75)

# (a) Calculate mean, median, and standard deviation
mean_age <- mean(age)
median_age <- median(age)
sd_age <- sd(age)

mean_fat <- mean(fat)
median_fat <- median(fat)
sd_fat <- sd(fat)

# Print the results
cat("Age Statistics:\n")
cat("Mean:", mean_age, "\n")
cat("Median:", median_age, "\n")
cat("Standard Deviation:", sd_age, "\n\n")

cat("Body Fat Percentage Statistics:\n")
cat("Mean:", mean_fat, "\n")
cat("Median:", median_fat, "\n")
cat("Standard Deviation:", sd_fat, "\n\n")

# (b) Draw Boxplots
# Create boxplots using base R
par(mfrow = c(1, 2))  # Set up the plotting area to have 2 plots side by side

# Boxplot for Age
boxplot(age, main = "Boxplot of Age", ylab = "Age", col = "lightblue")

# Boxplot for Body Fat Percentage
boxplot(fat, main = "Boxplot of % Fat", ylab = "% Fat", col = "lightgreen")

# Save boxplots to a file
dev.copy(png, filename = "boxplots.png")
dev.off()

# (c) Draw Scatter Plot and Q-Q Plots
# Scatter Plot
plot(age, fat, main = "Scatter Plot of Age vs % Fat",
     xlab = "Age", ylab = "% Fat", pch = 19, col = "blue")

# Q-Q Plot for Age
qqnorm(age, main = "Q-Q Plot of Age")
qqline(age, col = "red")

# Q-Q Plot for % Fat
qqnorm(fat, main = "Q-Q Plot of % Fat")
qqline(fat, col = "red")

# Save plots to files
dev.copy(png, filename = "scatter_plot.png")
dev.off()

dev.copy(png, filename = "qq_plot_age.png")
dev.off()

dev.copy(png, filename = "qq_plot_fat.png")
dev.off()


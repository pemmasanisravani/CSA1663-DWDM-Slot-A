x <- c(4, 1, 5, 7, 10, 2, 50, 25, 90, 36)
y <- c(12, 5, 13, 19, 31, 7, 153, 72, 275, 110)
plot(x, y, main = "Scatter Plot of Mobile Phones Sold vs. Money Earned",
     xlab = "Number of Mobile Phones Sold", ylab = "Money Earned",
     pch = 19, col = "blue", cex = 1.5)  
abline(lm(y ~ x), col = "red", lwd = 2)
dev.copy(png, filename = "scatter_plot_phones_vs_money.png")
dev.off()

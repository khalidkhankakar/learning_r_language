# Line area chart: A Line Area Chart is a combination of a line chart and a filled area below the line. It is useful for visualizing trends over time while emphasizing the magnitude of values.
# Sample dataset: Time series data
time <- seq(1, 10, 2)  # X-axis values
values <- c(10, 15, 12, 18, 20, 22, 25, 30, 28, 35)  # Y-axis values

time
values

plot(time, values, type = "n", xlab = "Time", ylab = "Values", main = "Area Chart in Base R")

c=polygon(c(time, rev(time)),
        c(values, rep(0, length(values))),
        col = "skyblue", border = "blue")
c
lines(time, values, col = "blue", lwd = 2)

library(ggplot2)

data <- data.frame(
  Time = 1:10,
  Values = c(10, 15, 12, 18, 20, 22, 25, 30, 28, 35)
)

ggplot(data, aes(x = Time, y = Values)) +
  geom_area(fill = "skyblue", alpha = 0.5) +  # Fill area
  geom_line(color = "blue", size = 1.2) +  # Add trend line
  theme_minimal() +  # Clean theme
  labs(title = "Line Area Chart using ggplot2", x = "Time", y = "Values")


# Sample time series data
time <- seq(1, 10, 1)
values1 <- c(10, 15, 12, 18, 20, 22, 25, 30, 28, 35)  # Line 1
values2 <- c(5, 10, 8, 12, 15, 18, 20, 22, 24, 27)    # Line 2


plot(time, values1, type = "n", xlab = "Time", ylab = "Values", main = "Multiple Lines Area Chart in Base R")

# Fill area for first line
polygon(c(time, rev(time)), c(values1, rep(0, length(values1))), col = "skyblue", border = "blue")

# Fill area for second line
polygon(c(time, rev(time)), c(values2, rep(0, length(values2))), col = "lightcoral", border = "red")


# Add multiple lines
lines(time, values1, col = "blue", lwd = 2)
lines(time, values2, col = "red", lwd = 2)


# Sample DataFrame
data <- data.frame(
  Time = rep(1:10, 2),  # Repeats time for two categories
  Values = c(10, 15, 12, 18, 20, 22, 25, 30, 28, 35, 5, 10, 8, 12, 15, 18, 20, 22, 24, 27),
  Category = rep(c("Product A", "Product B"), each = 10)  # Labels for two lines
)

ggplot(data, aes(x = Time, y = Values, fill = Category, color = Category)) +
  geom_area(alpha = 0.5) +  # Fill area
  geom_line(size = 1.5) +   # Add multiple lines
  theme_minimal() +  
  labs(title = "Multiple Line Area Chart in ggplot2", x = "Time", y = "Values") +
  scale_fill_manual(values = c("skyblue", "lightcoral")) +  # Custom colors
  scale_color_manual(values = c("blue", "red"))  # Line colors


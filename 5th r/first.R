# Sample data
data <- c(5, 10, 15, 20, 25, 30, 35, 40, 45, 50)

# Save the plot as a PNG file
png("histogram_plot.png", width = 800, height = 600)  # Open a PNG device

# Create the histogram
hist(data, 
     col = "skyblue", 
     border = "white", 
     main = "Histogram in Base R", 
     xlab = "Values", 
     ylab = "Frequency", 
     breaks = 5)

dev.off()  # Close the device to save the file

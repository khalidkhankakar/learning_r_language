# Sample data
values <- c(30, 20, 15, 25, 10)
labels <- c("A", "B", "C", "D", "E")

png('pie_chart.png', width = 800, height = 600)

# Create the pie chart
pie(values, labels = labels, col = rainbow(length(values)),
    main = "Pie Chart in Base R")


dev.off()
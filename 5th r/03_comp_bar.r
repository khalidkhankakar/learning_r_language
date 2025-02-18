# component bar chart
# Multiple bar chart
data = c(10, 20, 15, 30, 25)
labels = c("A", "B", "C", "D", "E")


png('simpe bar.png')

barplot(data,
# make horizental
        horiz = FALSE, 
         # Horizontal bar chart
        names.arg = labels,
        col = heat.colors(length((data))),       # Bar color
        main = "Simple Bar Chart", # Chart title
        xlab = "Categories",       # X-axis label
        ylab = "Values",
        
        ) 

dev.off()
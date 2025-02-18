x = c(1,3,5)
y = c(-3,-5,-8)

png('01_lec.png', width = 800, height = 600)

# line chart
# plot(x,y,col='red',main='My Plot',xlab='x axis',ylab='y axis',type='l',lwd=3)

# Sample data
# x1 <- rnorm(10)
# y2 <- rnorm(10)

# Scatter plot
# plot(x1, y2, col = "darkgreen",cex=4, main = "Scatter Plot",xlab = "X-axis", ylab = "Y-axis", pch = 10)

# Histogram
# data <- c(5, 10, 15, 20, 25, 10, 20, 15, 10, 30, 25, 20, 15, 10, 5)
# hist(data, col = "purple", main = "Histogram",
#      xlab = "Values", ylab = "Frequency")

# Pie chart
x <- c(12, 33, 54, 56)
pie(x,
 labels =c('shabaz', 'fahad', 'ahmed', 'khalid'), main = 'Pie Chart', col=heat.colors(length(x))
)
# legend(
#     'topright',
#     legend = c('ali', 'ahmad', 'hassan', 'khalid'),
#     fill = heat.colors(length(x)),
#     cex = 1.3
# )

# 3d pie chart using plotrix
# library(plotrix)
# x <- c(12, 33, 54, 56)
# pie3D(x, labels = c('ali', 'ahmad', 'hassan', 'khalid'), main = '3D Pie Chart', col = heat.colors(length(x)), border = 'red')

# bar chart
# x <- c(12, 33, 54, 56)
# barplot(x,
# horiz = FALSE,
# names.arg = c('ali', 'ahmad', 'hassan', 'khalid'),
# main = 'Bar Chart',
# xlab = 'Categories',
# ylab = 'Values', 
# col = heat.colors(length(x)))

# component bar chart
values = matrix(
    c(50,60,70,70,80,90),
    nrow=2,
    ncol =3, 
    byrow = FALSE
)

barplot(
    values, 
    main = "Total Revenue by Region", 
    xlab = "Month", 
    ylab = "Revenue",
    beside =TRUE,
    names.arg=c('jan', 'feb','mar'),
    col= heat.colors(2)
)
 legend(
    'topright',
    legend = c('ali', 'ahmad'),
    fill = heat.colors(2),
    cex = 1.3
)


dev.off()

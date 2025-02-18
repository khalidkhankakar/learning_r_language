# pie chart
x = c(10,23,45,64)
pieLabels = c('khalid','fahad', 'ahmad', 'kakar')
myColors = c('red', 'yellow', 'green', 'blue')
# pie(x,labels = pieLabels, main='My Pie chart',col = myColors, init.angle = 45)

# legend
legend('bottomright', pieLabels, fill = myColors)

library(plotrix)

pie3D(x)
# heat.colors(4)
# data.radius=2,
# height = 0.3,
# theta = 2,
pie3D(x,
      height = 0.1,
      theta = 1,
      col = rainbow(4),
      border= 'green',
      labels = pieLabels,
      labelcol = 'blue',
      mar = c(1,1,1,1),
      explode = c(.2),
      )

# Task: How to explode just one slice from the 3d pie chart

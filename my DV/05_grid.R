library(grid)
my_circle = circleGrob(x=0.5,y=0.5, r=0.5,
           gp=gpar(col='red', lty=3))

my_rectangle = rectGrob(x=0.5, y=0.5, width=0.8, height=0.3)

my_square = rectGrob(x=0.4, y=0.3,width=0.4, height=0.4)

my_triangle = polygonGrob(x = c(0.5, 0.6, 0.4), y = c(0.4, 0.2, 0.2), gp = gpar(fill = "purple"))

my_petagon = polygonGrob(x = c(0.5, 0.6, 0.4,0.4,0.4), y = c(0.4, 0.2, 0.2,0.4,0.3), gp = gpar(fill = "yellow"))

grid.draw(my_circle)
grid.draw(my_rectangle)
grid.draw(my_square)
grid.draw(my_petagon)
grid.draw(my_triangle)


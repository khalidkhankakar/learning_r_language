library(ggplot2)
library(dplyr)

head(mtcars)

ggplot(data = mtcars) +
  labs(title = "MT cars data plot")

# Aesthetic layer
ggplot(data = mtcars, aes(x = hp, y =mpg, col = disp)) +
  labs(title = "MT cars data plot")

ggplot(data = mtcars, aes(x = hp, y =mpg, col = disp)) +
  geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")


ggplot(data = mtcars, aes(x = hp, y = mpg, col = factor(cyl),
                          shape = factor(am))) +geom_point() +
  labs(title = "Miles per Gallon vs Horsepower",
       x = "Horsepower",
       y = "Miles per Gallon")

ggplot(data = mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 5) +
  labs(title = "Histogram of Horsepower",
       x = "Horsepower",
       y = "Count")




ggplot(data = mpg)


ggplot(mpg, mapping = aes(x = cty, y= hwy))


# ------------------------------------------- basic here
ggplot(data = mtcars, aes(x = hp, y = mpg, color= factor(cyl))) +
  geom_point(size=3) +
  labs(title = "Horsepower vs MPG", x = "Horsepower", y = "Miles per Gallon")


# bar chart
ggplot(data = mtcars , aes(x = factor(cyl), fill = factor(cyl))) +
  geom_bar() +
  labs(title = "Car Count by Cylinders", x = "Cylinders", y = "Count")

# line chart
ggplot(economics, aes(x = date, y = unemploy)) +
  geom_line() +
  labs(title = "Unemployment Over Time")


data(iris)
IrisPlot <- ggplot(iris, aes(Sepal.Length, Petal.Length, colour=Species)) + geom_point()
print(IrisPlot)

print(IrisPlot + labs(x= "Petal lenght cm", x= "Sepal lenght")) +
  ggtitle('Petal and Sepal lenght of iris')

# Adding the text
IrisPlot + annotate('text', x=6, y=5, label='Text')

#Repeat that text
IrisPlot + annotate('text', x=4:6, y=3:5, label='Text')

# highlight the area
IrisPlot + annotate('rect',xmin=5, xmax=7, ymin=4, ymax=6,alpha=0.3)

# remove the theme 
IrisPlot + theme(legend.position = "none")

# also can be hide legend title
IrisPlot + theme(legend.title = element_blank())

IrisPlot + theme(legend.position = "top")
IrisPlot + theme(legend.position = "bottom")


IrisPlot + theme(legend.title = element_text(colour='blue', face = 'bold', size=10))
IrisPlot + theme(legend.text = element_text(colour='red', face = 'bold', size=10))


# Basic of scatter plot
ggplot(iris, aes(Sepal.Length, Petal.Length)) +
  geom_point()

# changing the shape
ggplot(iris, aes(Sepal.Length, Petal.Length,colour =Species )) +
  geom_point(shape=2)


# adding the relationship and remove the shadow , se = FALSE
ggplot(iris, aes(Sepal.Length, Petal.Length,colour =Species )) +
  geom_point(shape=2) +
  geom_smooth(method= lm , se=T)


data(mpg)
mpg

# jitter plot
ggplot(mpg, aes(cyl, hwy)) +
  geom_point() +
  geom_jitter(aes(colour = class))

# bar count plot
ggplot(mpg, aes(x = factor(cyl))) +
         geom_bar(stat = "count")


ggplot(data=mpg, aes(x=hwy)) +
  geom_histogram(col='red',
                 fill='green',
                 alpha=.2,
                 binwidth = 5)


ggplot(mpg, aes(x=class)) +
  geom_bar(fill = "gray10")  +  # Clean theme
  labs(title = "Count of Car Classes", x = "Class", y = "Count")


ggplot(mpg, aes(x = class, fill = drv)) +
  geom_bar() +
  labs(title = "Stacked Bar Chart: Car Class by Drive Type", x = "Class", y = "Count")




# pie chart
pieDf = as.data.frame(table(mpg$class))
colnames(pieDf) = c('Class', 'Frequency')
pieDf


pieChart = ggplot(pieDf, aes(x='Class', y= 'Frequency', fill = factor(Class))) +  geom_bar(width=1, stat='identity') 

pieChart + coord_polar(theta = 'y', start=0)


# Marginal plots
# Marginal plots has plots on x and y axies

library(ggExtra)


gScatter = ggplot(mpg, aes(cty, hwy)) +
  geom_count()+
  geom_smooth(method='lm',se=F)
  
ggMarginal(gScatter, type='histogram', fill ='transparent')

ggMarginal(gScatter, type='boxplot', fill='blue')

ggMarginal(gScatter)


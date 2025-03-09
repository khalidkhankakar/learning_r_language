# The Grammar of Graphics
# Data: The dataset you are visualizing.
# Aesthetics: aes() Mapping variables to visual properties. such x-axies y-axies.
# Geometrics: The type of plot
# Facets: Small multiples (subplots by category).
# Stats: Statistical transformations (e.g., binning, smoothing).
# Coordinates: Axis scales and transformations.
# Themes: Non-data ink (fonts, colors, backgrounds).


# Scatter plot
# Scatter plot is used to visualize the relationship between two variables.
library(ggplot2)
data = data.frame(
  x = rnorm(100, mean=50, sd=10),
  y = rnorm(100, mean=60, sd=5)
)

data

# Method 1: by using the built-in plot function
plot(data$x, data$y, main = 'Scatter Plot X vs Y', xlab = 'X axies', ylab = 'Y axies', pch=19, col='red')


# Method 2: by using the ggplot2 library
ggplot(data, aes(x=x, y=x)) +
  geom_point(color='blue') +
  geom_smooth(method = 'lm', se=FALSE,color='red') +
  ggtitle('Scatter plot with Regression line') +
  xlab('X axies') +
  ylab('Y axies')
  theme_minimal()





















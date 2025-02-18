# # Data for the pie chart
# x <- c(12, 33, 54, 56)

# # Colors for the pie chart
# colors <- c('green', 'red', 'blue', '#8a1884')

# # Create the pie chart
# pie(
#   x, 
#   init.angle = 90, 
#   labels = c('A', 'B', 'C', 'D'), 
#   main = 'Pie Chart', 
#   col = colors
# )

# # Add a legend
# legend(
#   "bottomright",                    # Position of the legend
#   legend = c('A', 'B', 'C', 'D'),   # Labels for the legend
#   fill = colors,                    # Colors matching the pie slices
#   cex = 0.8                         # Scale of the text
# )


# Install plotrix if not already installed

# Load the plotrix library
library(plotrix)

# Data for the pie chart
x <- c(12, 33, 54, 56) # Values
labels <- c('A', 'B', 'C', 'D') # Categories

# Colors for the pie chart
# colors <- c('green', 'red', 'blue', '#8a1884')
# colors <- heat.colors(4, palette="Blues")

# Create a 3D pie chart
pie3D(
  x, 
  labels = labels, 
  explode = 0.2,       # Adds space between slices
  main = "3D Pie Chart", 
  labelcol = "gray",  # Text color
border = "#fa1515",     # Border color

)

# Add legend
legend(
  "topright",          # Position of the legend
  legend = labels,     # Labels for the legend
  fill = colors,       # Matching colors for slices
  cex = 0.8            # Scale for the legend text
)

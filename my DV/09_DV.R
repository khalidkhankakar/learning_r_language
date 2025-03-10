# Radar chart: A Radar Chart (also called a Spider Chart) is used to visualize multivariate data in a way that each variable is represented along a separate axis, radiating from the center.

library(fmsb)

data <- data.frame(
  Speed = 8,
  Strength = 7,
  Agility = 9,
  Endurance = 6,
  Flexibility = 8
)
data
max_min <- data.frame(
  Speed = c(10, 1),
  Strength = c(10, 1),
  Agility = c(10, 1),
  Endurance = c(10, 1),
  Flexibility = c(10, 1)
)

max_min

data <- rbind(max_min, data)
data


radarchart(data,
           axistype = 1,
           pcol='red',
           pfcol = rgb(0.3,0.5,0.3,0.6),
           plwd = 2,
           title='Athelete Performance'
           )


# Sample dataset with multiple groups
data2 <- data.frame(
  Speed = c(10, 1, 8, 6),
  Strength = c(10, 1, 7, 9),
  Agility = c(10, 1, 9, 8),
  Endurance = c(10, 1, 6, 7),
  Flexibility = c(10, 1, 8, 5)
)

# Add row names (optional, but useful)
rownames(data2) <- c("Max", "Min", "Athlete 1", "Athlete 2")

data2
# Radar chart with multiple groups
radarchart(data2, 
           axistype = 1, 
           pcol = c("blue", "red"),  # Colors for groups
           plwd = 2, 
           title = "Athlete Comparison Radar Chart")

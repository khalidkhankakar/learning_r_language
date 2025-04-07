# Box plot
library(tidyverse)
score = c(12,23,45,67,78,56,42,23)
qplot(
    x = score,
    geom = "boxplot",
    main = "Box Plot",
    xlab = "Score",
    ylab = "Frequency",
    fill = I("blue"),
    col = I("red")
)

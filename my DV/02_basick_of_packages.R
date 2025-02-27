.libPaths()
library()
install.packages(c("MASS"))
update.packages()
library("MASS") # If there is no library found it throws an error
require("MASS") # If no library found it throws a warning
library(caret, dplyr, ggplot2)
install.packages('ggplot2')

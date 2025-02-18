# Regression

# Simple linear regression
x <- c(1, 2, 3, 4, 5)
y <- c(50, 55, 60, 65, 70)
# print(lm(y~x))


# Todo: make this
# Polynomia model use poly
# lm(y-plot(x, degree=2, raw=TRUE))

# Multiple linear regression
hours <- c(1, 2, 3, 4, 5) # indepandant varibale
problems <- c(10, 20, 30, 40, 50) # indepandant varibale
scores <- c(50, 55, 60, 65, 70) # depandant varibale

# Create a data frame
data <- data.frame(hours, problems, scores)

# Perform multiple linear regression
model <- lm(scores ~ hours + problems, data = data)

# View the summary of the regression model
print(summary(model))
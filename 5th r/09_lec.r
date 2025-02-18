# Two way ANOVA
set.seed(10)

# Define the data frame
dat1 <- data.frame(
    gender = rep(c("Male", "Female"), each = 15),
    exercise = rep(c("None", "Light", "Intense"), each = 5, times = 2),
    weight_loss = c(
        15, 53, 76, 34, 12, 74, 23, 53, 23, 12,
        12, 43, 65, 34, 12, 54, 76, 45, 23, 34,
        97, 54, 84, 23, 85, 23, 95, 23, 65, 43
    )
)

print(dat1)

# Generate the contingency table
table_data <- table(dat1$gender, dat1$exercise)
# print(table_data)

# * is used for interaction
# + is used for adding variables
model <- aov(weight_loss ~ gender + exercise, data = dat1)

twoWayAnova <- summary(model)
# print(twoWayAnova)



set.seed(20)

# Define the data frame
dat2 <- data.frame(
  fertilizer = rep(c("f1", "f2", "f3"), each = 6),
  seed = rep(c("s1", "s2", "s3"), each = 2, times = 3),
  effect = c(
    50, 51, 60, 61, 63, 62,
    49, 53, 75, 59, 69, 61,
    51, 55, 58, 63, 47, 49
  )
)

# Print dat2
# print(dat2)

# Generate the contingency table
table_data <- table(dat2$fertilizer, dat2$seed)
# print(table_data)

# create the model
# use this * in exam paper
model2 = aov(effect ~ fertilizer * seed, data = dat2)
twoWayAnova2 = summary(model2)
print(twoWayAnova2)
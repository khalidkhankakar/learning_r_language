# The most essential data structure in R language

# Vector:- A vector is an ordered collection of basic data types of a given length. Vector holds the same datatype.
l = c(12, 13,14,15,16)

# List:- A list is a one-dimensional data structure that can hold different data types (numbers, strings, vectors, even other lists).
my_list <- list(Name="John", Age=30, Scores=c(85, 90, 88))
paste(my_list)


# Data frames:- A data frame is similar to a matrix, but it can contain different data types in columns.
df = data.frame(Name=c('Khalid', 'Junaid'), Age=c(19, 20), score=c(78,12))
print(df)
# Matrices:- A matrix is a two-dimensional data structure that holds only one data type (numeric, character, etc.).
mat = matrix(1:6, nrow=2, ncol=3)
print(mat)
# Arrays:- An array is similar to a matrix but can have more than two dimensions.
arr <- array(1:12, dim=c(2,3,2))
print(arr)
# Factor:- A factor is used to store categorical data (e.g., "Male"/"Female", "Low"/"Medium"/"High").
gender <- factor(c("Male", "Female", "Female", "Male"))
print(gender)


data = matrix(
    c(50, 30, 20, 40, 40, 20, 30, 20, 50),
    ncol = 3,
    nrow = 3, 
    byrow = TRUE
)


rownames(data) = c("Kpk", "GB", "Balochistan")
colnames(data) = c("Black", "Brown", "Gray")


print(data)
chi_square_test = chisq.test(data)



library(MASS)

# Step 2: Load the Cars93 dataset from the MASS package
data(Cars93)

# Step 3: Check the structure of the dataset to understand the variables
str(Cars93)


# Step 4: Let's create a contingency table for 'Type' and 'Origin'
table_type_origin <- table(Cars93$Type, Cars93$Horsepower)

# print(table_type_origin)

# Step 5: Perform the Chi-Square Test on the contingency table
chi_square_test <- chisq.test(table_type_origin)

# Step 6: Print the results
# print(chi_square_test)
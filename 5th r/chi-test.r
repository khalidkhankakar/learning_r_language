data = matrix(
    c(2,6,12,8,2,8,8,16,6,12,14,16,4,6,4,6),
    ncol = 4,
    nrow = 4,
    byrow = TRUE)


colnames(data) = c("Milk C", "White C", "Dark C", "Sweet C")
rownames(data) = c("Pakistan", "UK", "USA", "UAE")

# print(data)

chi_test = chisq.test(data)

# print(chi_test)

data2 = matrix(
    c(30,20,40,10),
    nrow = 2,
    ncol = 2,
    byrow = TRUE
)

colnames(data2) = c("Product A", "Product B")
rownames(data2) = c("Male", "Female")

print(data2)


chi_test2 = chisq.test(data2)

print(chi_test2)
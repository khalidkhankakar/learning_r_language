# Matrix:- A matrix is two dimensional data structure in R programming language. It is an extension of vector but with rows and columns.

# Creating matrix
mat1 = matrix(c(1:9),nrow = 3, ncol=3)
mat1

print(nrow(mat1))
print(ncol(mat1))

print(mat1 + 1)

print(min(mat1))
print(max(mat1))

print(dim(mat1))

print(is.matrix(mat1))
print(as.matrix(c(1:3)))

mat2 = matrix(c(1:8), nrow=2, byrow = TRUE)
mat2



rownames(mat1) = c('R1', 'R2', 'R3')
colnames(mat1) = c('C1', 'C2', 'C3')
mat1


# Accessing the matrix elements
print(mat1[1,2])
    # mat[row, col]

# Access the separate row and column
print(mat1[1,])
print(mat1[, 2])


# Extracting the sub matrix

# matrix[row_indices, column_indices]
mat1
print(mat1[1:1,1:2])

# Operations in matrix
A <- matrix(c(2,3,8,5), nrow=2)
B <- matrix(c(3,2,4,3), nrow=2)

print(A + B)
print(A - B)

print(A %*% B)

# Element wise operation
print(A * B)

print(A %/% B)
print(A %% B)


print(t(A))

# column binding 

C = cbind(A, B)

D = rbind(A, B)


A
# Applying the operation row-wise and column-wise
print(apply(A, 1, prod))
print(apply(A, 2, sum))
print(apply(A, 2, min))

print(diag(2,4))

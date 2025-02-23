# Array: Array is multi-dimensional data structure that holds elements of same data type. like numric, chars, booleans etc.
arr <- array(1:12, dim = c(6, 2))  # 3 rows, 2 columns, 2 matrices
arr

arr2 <- array(LETTERS[1:12], dim = c(3,2,2),
             dimnames = list(
               c('Row1', 'Row2', 'Row3'),
               c('Column1', 'Column2'),
               c('Matrix1', 'Matrix2')
               ))
arr2

# Accessing the elements
# arr[row, column, matrix]
arr2[3,2,1]

arr2[,2,]

arr2[2,,1]

arr1 = array(1:6, dim=c(3,2,1))
arr2 = array(7:12, dim=c(3,2,1))

arr1
arr2

arr_sum = arr1 + arr2
arr_sum

arr_prod = arr1 * arr2
arr_prod

apply(arr1, 1, sum)
apply(arr1, 2,sum)

# Merging & Binding the arrays

# combining the column wise
cbind(arr1[,,1], arr2[,,1])

# combining the row wise
rbind(arr1[,,1], arr2[,,1])

arr1
dim(arr1) = c(2,3,1)

arr1[2,3,1]



print(as.matrix(arr1[,,1]))
print(as.data.frame(arr1[,,1]))


vector1 <- c(5, 9, 3) 
vector2 <- c(10, 11, 12, 13, 14, 15) 
column.names <- c("COL1", "COL2", "COL3") 
row.names <- c("ROW1", "ROW2", "ROW3") 
matrix.names <- c("Matrix1", "Matrix2") 

# Take these vectors as input to the array. 
result <- array(c(vector1, vector2), dim = c(3, 3, 2), 
                dimnames = list(row.names, column.names, 
                                matrix.names)) 
print(result) 




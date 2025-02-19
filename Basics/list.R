# A list in R is a data structure that can store multiple types of elements (vectors, matrices, data frames, even other lists). Unlike vectors, lists do not require all elements to be of the same type.
my_list <- list(1, "c", TRUE, c(1,2))
print(my_list)
print(my_list[1]) # Access the first element of the list
print(my_list[[1]]) 
print(my_list[[4]]) # Access the fourth element of the list
print(my_list[4])
print(my_list[[4]][2]) # Access the second element of the fourth element of the list


# NOTE: [] returns a list but [[]] it return the actucal value

my_list <- list(
  name = "Khalid Khan",
  age = 30,
  scores = c(85, 90, 88),    # Numeric vector
  passed = TRUE              # Logical value
)
print(my_list)
print(my_list$passed)

print(my_list[['age']])

# Update the element
my_list$age <- 21 
my_list

# Add the element
my_list$city = "killa saifullah"
my_list

# Remove the an element
my_list$passed <- NULL
my_list

# length of the list
length(my_list)

# combine the lists
l1 = list(1, 2, 'a', 'b',c(1,2))
l2 = list(TRUE, 'one')
combine_list <- c(l1, l2)
combine_list


# convert list into a vector
list_to_vec = unlist(combine_list)
list_to_vec

# Nested list
nested_l = list(
  name="khalid",
  fav_num_hobbies = list(7, 'football ⚽')
)
nested_l

# Creating a 2D list
two_d_list <- list(
  row1 = list(name = "Alice", age = 25, scores = c(90, 85, 88)),
  row2 = list(name = "Bob", age = 30, scores = c(80, 78, 75))
)
two_d_list
two_d_list$row1$name

# Convert two dimensional list into dataframe
df <- do.call(rbind, lapply(two_d_list, as.data.frame))
print(df)


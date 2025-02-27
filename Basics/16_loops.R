# For loop
for (val in 1:5){
  print(val)
}

alphabits = letters[1:26]
for (letter in alphabits){
  print(letter)
}

week <- c('Sunday',
          'Monday',
          'Tuesday',
          'Wednesday',
          'Thursday',
          'Friday',
          'Saturday')

for (day in week)
{
  print(day)
}

my_list = list('a', TRUE, 'khalid', 12)
for (l in my_list){
  print(l)
}


my_matrix = matrix(1:9, nrow=3)

for(i in seq_len(nrow(my_matrix))){
  for (j in seq_len(ncol(my_matrix))){
    current_element <- my_matrix[i, j]
    print(paste("The current element is:", current_element))
  }
}


my_dataframe <- data.frame(
  Name = c("Joy", "Juliya", "Boby", "Marry"),
  Age = c(40, 25, 19, 55),
  Gender = c("M", "F", "M", "F")
)

for (i in seq_len(nrow(my_dataframe))){
  print(my_dataframe[i,])
}


# -------------------

val = 1

# using while loop
while (val <= 5)
{
  # statements
  print(val)
  val = val + 1
}


n <- 5

factorial <- 1
i <- 1

# using while loop
while (i <= n)
{
  factorial = factorial * i
  i = i + 1
}
print(factorial)




# ---------------

val = 1
repeat
{
  val = val + 1
  print(paste('current value', val))
  if(val > 5)
  {
    break
  }
}


i <- 0

repeat
{
  
  print("Kakar 4 Kakar!")
  
  i = i + 1
  
  # checking the stop condition
  if (i == 5)
  {
    # using break statement
    # to terminate the loop
    break
  }
}





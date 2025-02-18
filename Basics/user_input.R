name <- readline(prompt = 'Enter your name: ')
print(name)
print(class(name))

age <- as.numeric(readline('Enter your age: '))
print(age)
print(class(age))


# Taking the multiple inputs
values <-  readline("Enter two numbers separated by space ")
num_list <- as.numeric(unlist(strsplit(values, ' ')))
print(num_list[1])
print(num_list[2])


# Another methods of taking the multiple input
{
  var1 = readline("Enter 1st number : ");
  var2 = readline("Enter 2nd number : ");
  var3 = readline("Enter 3rd number : ");
  var4 = readline("Enter 4th number : ");
}
var1 = as.integer(var1);
var2 = as.integer(var2);
var3 = as.integer(var3);
var4 = as.integer(var4);


print(var1 + var2 + var3 + var4)



# ---------------------------- using scan() method
# scan method is used for taking input continously
k <- scan()
print(k)
print(class(k))

d = scan(what = double())

# string input using 'scan()'
s = scan(what = " ")

# character input using 'scan()'
c = scan(what = character())

print(d) # double
print(s) # string
print(c) # character

print(class(d)) # double
print(class(s)) # string
print(class(c)) # character



numbers <- scan(what = numeric(), sep = ",")
print(numbers)

data <- scan('./data.txt', what = character())
print(data)



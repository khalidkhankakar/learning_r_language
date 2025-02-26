age = 18 
if(age){
  print('You can drive safely')
}

num = as.numeric(readline(prompt = 'Enter the number:  '))
if(num > 0){
  print('Number is positive')
}else{
  print('Number is negative')
}

# if else ladder
score <- 85

if (score >= 90) {
  print("Grade: A")
} else if (score >= 80) {
  print("Grade: B")
} else if (score >= 70) {
  print("Grade: C")
} else {
  print("Grade: F")
}


# Nested ladder
num <- -8

if (num != 0) {
  if (num > 0) {
    print("Positive number")
  } else {
    print("Negative number")
  }
} else {
  print("Zero")
}



# Switch case statement
day <- "Tuesday"

result <- switch(day,
                 "Monday" = "Start of the week!",
                 "Tuesday" = "Work hard!",
                 "Wednesday" = "Midweek hustle!",
                 "Thursday" = "Almost there!",
                 "Friday" = "Weekend loading...",
                 "Saturday" = "Time to relax!",
                 "Sunday" = "Rest day!",
                 "Invalid day"
)

print(result)


option <- '2'

result <- switch(option,
                 '1' = "Option 1 Selected",
                 '2' = "Option 2 Selected",
                 '3' = "Option 3 Selected",
                 "Invalid option"
)

print(result)


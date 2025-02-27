# Break: Exit the loop immediately when the certain condition met.
for(i in 1:10){
  if(i == 5){
    print(sprintf('Exit the loop when value is %s', i))
    break
  }
  print(i)
}

# Continue: Skip the current iteration when the certain condition met.
for(i in 1:10){
  if(i == 5){
    print(sprintf('Exit the loop when value is %s', i))
    next
  }
  print(i)
}

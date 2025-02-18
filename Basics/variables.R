# ls() :- list the all variables present in the workspace
var1 <- 'khalid'
var2 = 'khan'
'kakar' -> var3

ls()

rm(var2)


# SCOPE OF THE VARIABLES
# R program to illustrate 
# usage of global variables 

# global variable 
global = 5

# global variable accessed from 
# within a function 
display = function(){
  print(global)
} 
display() 

# changing value of global variable 
global = 10
display()


# DYNAMIC SCOPING 


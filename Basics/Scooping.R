# There are two types of scoop in R language
# 1). Dynamic scoop   2). Lexical scoop
# R use the lexical scoop by default but we can simulate the dynamic scoop in r language

# Lexical Scoop:- A function looks for variables where it's is defined, not where is called.

x <- 12

y <- function(){
  print(x)
}

g <- function(){
  x <- 300
  y()
}

g()


# Dynamic Scoop:- A function looks for variables where it is called not where it's defined.
f <- function(){
  print(eval.parent(quote(x)))
}

e <- function(){
  x <- 500
  f()
}

e()

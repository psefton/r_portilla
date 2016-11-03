##built in R functions
#seq()
#sort()
#rev() -- reverse
#str()  -- structure
#append() -- merge objects together


seq(0,100,2)
seq(0,100,10)

v<- c(1,4,7,2,13,3,11)
sort(v, decreasing = TRUE)

cv <- c('b', 'd', 'a')
sort(cv)
v<- 1:10
rev(v)
str(v)

v <- 1:10
v2 <- 35:40

v
v2
append(v,v2)

#check data type
# is.
# as.
v <- c(1,2,3)
is.vector(v)

v
as.list(v)
as.matrix(v)

#apply
sample(x = 1:100,3)
v <- c(1,2,3,4,5)

addrand <- function(x){
  ran <- sample(1:100,1)
  return(x+ran)
}
print(addrand(10))
v <- 1:10
sapply(v,addrand)
v<- 1:5
times2 <- function(num){
  return(num*2)
}
result <- sapply(v,times2)
print(result)
#anonymous functions

sapply(v,function(num){num*2})

#apply with multiple inputs

add_choice <- function(num,choice){
  return(num+choice)
}

sapply(v,add_choice, choice = 100)




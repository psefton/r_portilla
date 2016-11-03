#logical operators
x <- 10
x <20
x <20 & x >5
(x<20) & (x >5)
(x<20) & (x >5) & (x==10)
(x<20) & (x >5) & (x==9)
TRUE & TRUE
TRUE & FALSE
(x==10)|(x==100)
(x==1000)|(x==100)
(10==1)
!(10==1)
df <- mtcars
head(df)
df[df$mpg>20,]
df[df$mpg>20,'mpg']
subset(df,mpg>20)
df[df$mpg>20 & df$hp >100,]
df[df$mpg>20 | df$hp >100,]

#if, else and else if

x <- 13
if(x ==10){
  print('x is equal to 10')
} else if (x ==12){
  print('x is equal to 12')
} else{
  'x was nto equal to 10 or 12'
}


ham <- 5
cheese <- 5
report <- 'blank'

if (ham >= 10 & cheese >= 10){
  report <- "Strong Sales of both ham and cheese"
}else if (ham ==0 & cheese ==0){
  report <- "No sales today!"
} else{
  report <- "we sold something today"
}
print(report)

# conditional excercises

x <- 4

if(x %% 2 == 0) {
  print("even")
}else {
  print("not even")
}


x <- 3

if(is.matrix(x)){
  print("is a matrix")
}else {
  print("is NOT a matrix")
}

x <- c(3,7,1)


if(x[1] > x[2]){
  largest <- x[1]
  middle <- x[2]
}else{
  largest <- x[1]
  middle <- x[2]
}else if(x[2] > x[1] & x[2] >x[3] & x[3] > x[1]) {
  c(x[2],x[3],x[1])
}else if(x[2] > x[1] & x[2] >x[3] & x[1] > x[3]) {
  c(x[2],x[1],x[3])
}else if(x[3] > x[1] & x[3] >x[2] & x[2] > x[1]) {
  c(x[3],x[2],x[1])
}else if(x[3] > x[1] & x[3] >x[2] & x[1] > x[2]) {
  c(x[3],x[1],x[2])
}

x <- c(20, 10, 1)

if(x[1] > x[2] & x[1] >x[3]){
  x[1]
}else if(x[2] >x[3]) {
  x[2]
}else{
  x[3]
}


#while

x <- 0

while (x <10){
  print(paste0('x is: ',x))
  
  x <- x+1
  if (x ==5){
    print("x is not equl to 5! Break Loop!")
    
  }
}


# for loops

v <- c(1,2,3,4,5)

for (x in v) {
  print(x)
}

#functions

help(sum)
hello <- function(){
  print("Hello")
}
hello()
hello_name <- function(name = "peter"){
  print(paste("Hello ",name))
}
hello_name()

add_num <- function(num1, num2){
  return(num1+num2)
}
result <- add_num(1,2)
times5 <- function(num){
  my.result <- (num*5)
  return(my.result)
}
my.output <- times5(100)
print(my.output)

v <- "I am a global variable"
stuff <- "i am global stuff"

fun <- function(stuff){
  print(v)
  stuff <- "reassign stuff inside of this function fun"
  print(stuff)
}
fun(stuff)
print(stuff)

# excercises

num_check <- function(num, vec){
  result = FALSE
  for (value in vec){
    if(num == value){
      result = TRUE
    }
    if(result == TRUE){
      break
    }
  }
  return(result)
}
num_check(4,c(1,2,3))

num_count <- function(num, vec){
  counter = 0
  for(value in vec){
    if(value == num){
      counter = counter +1
    }
  }
  print(counter)
}
num_count(2,c(1,1,2,2,3,3))
num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3))

bar_count <- function(req){
  big_bars = floor(req/5)
  small_bars = req%%5
  print(big_bars+small_bars)
}
bar_count(6)
bar_count(25)

summer <- function(num1,num2,num3){
  result = 0
  vec <-  vector('numeric')
  vec <-append(vec,num1)
  vec <-append(vec,num2)
  vec <-append(vec,num3)
  print(vec)
  for(x in vec){
    if(x%%3 > 0){
      result = result + x
    }
  }
  print(result)
}

summer(7,2,3)
summer(3,6,9)
summer(9,11,12)

prime_check <- function(num){
  if(num < 1){
    return(FALSE)
    break
  }else if(num <= 3){
    return(TRUE)
    break
  }else if(num %% 2 ==0 | num %% 3 == 0){
    return(FALSE)
    break
  }
  i <- 5
  while(num >= i * i){
    if(num %% i == 0 | num %% (i + 2) == 0){
      return(FALSE)
      break
    }
    i <- i + 6
  }
  return(TRUE)
  break
}

prime_check(2)
prime_check(5)
prime_check(4)
prime_check(237)
prime_check(131)
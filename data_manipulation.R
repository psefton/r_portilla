#data manipulation

#install dplyr
install.packages('dplyr')
library(dplyr)
install.packages('nycflights13')
library(nycflights13)
head(flights)
summary(flights)
#filter() (and slice())
#arrange()
#select() (and rename())
#distinct()
#mutate() (and transmute())
#summarise()
#sample_n() and sample_frac()
head(filter(flights,month==11,day==3,carrier=='AA'))
slice(flights,1:10)
head(flights)
arrange(flights,year, month, day, arr_time)
arrange(flights,year, month, day, desc(arr_time))
head(select(flights,carrier, arr_time))
head(rename(flights, airline_carrier=carrier))
distinct(flights,carrier)
head(mutate(flights,new_col = arr_delay - dep_delay))
head(transmute(flights,new_col = arr_delay - dep_delay))
summarise(flights,avg_air_time = mean(air_time, na.rm = TRUE))
sample_n(flights,10)
sample_frac(flights,.10)

#pipe operator
df <- mtcars
#nesting
filter(df,mpg>20)
sample_n(filter(df,mpg>20),size=5)
arrange(sample_n(filter(df,mpg>20),size=5),desc(mpg))
#multiple assignments wastes memory
a <- filter(df,mpg>20)
b <- sample_n(a,size=5)
result <- arrange(b,desc(mpg))
print(result)

#pipe operation
# data %>% op1 %>% op2 %>% op3
df %>% filter(mpg>20) %>% sample_n(size=5) %>% arrange(desc(mpg))

head(mtcars)
#excercises
filter(mtcars,mpg >20,cyl ==6 )
arrange(mtcars, cyl, desc(wt))
select(mtcars,mpg,hp)

distinct(mtcars,gear)
head(mutate(mtcars,performance = hp/wt))

summarise(mtcars, mean(mpg))
mtcars %>% filter(cyl == 6) %>% summarise(mean(hp))

#tidyr

install.packages('tidyr')
library(tidyr)
install.packages('data.table')
library(data.table)

#gather()
comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
df

gather(df,Quarter,Revenue,Qtr1:Qtr4)

df %>% gather(Quarter,Revenue,Qtr1:Qtr4)



stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks
stocks.gathered <- stocks %>% gather(stock,price,X,Y,Z)
head(stocks.gathered)

#spread()

stocks.gathered %>% spread(stock,price)

stocks.gathered %>% spread(time,price)

#separate
df <- data.frame(x = c(NA,"a.x","b.y","c.z"))
df
separate(df,x,c('ABC','XYZ'))
df <- data.frame(x = c(NA,"a123x","b123y","c123z"))
df
separate(df,x,c('ABC','XYZ'),sep='2')

#unite

df.sep <- separate(df,x,c('ABC','XYZ'),sep='2')
df.sep
unite(df.sep,new.joined.col,ABC,XYZ, sep = '---')

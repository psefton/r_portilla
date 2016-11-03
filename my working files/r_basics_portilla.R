1+2
2^3
5-3


a<- 2.2
class(a)


b <- "peter"
class(b)


class(T)


nvec <- c(1,2,3,4)
nvec
class(nvec)


cvec <- c('u', 's', 'a')
cvec
class(cvec)

lvec <- c(T,F,T)
lvec
class(lvec)


v <- c(F,20,40)
v
class(v)


v <- c('USA', 20,31)
v
class(v)


temps <- c(23,56,87,90,1,24,100)
temps

names(temps) <- c('Mon', "Tues", "Weds", "Thurs", "Fri", "Sat", "Sun")
temps

names <- c('Mon', "Tues", "Weds", "Thurs", "Fri", "Sat", "Sun")

names(temps) <- names



v1 <- c(1,2,3)
v2 <- c(4,5,6)

v1 + v2
v1 - v2
v1 * v2
v1 / v2
v1 %% v2

sum(v1)
mean(v1)
summary(v1)
prod(v1)


v1 <- c(100,200,300)
v2 <- c('a', 'b', 'c')

v1
v2

v1[2]
v2[3]

v1[c(1,2)]


v <- c(1:10)
v

v[3:6]
v[7:10]




my.filter <- v >2
my.filter
v[my.filter]

v<- c(1,2,3,4,5)



v <- 1:10
matrix(v, nrow=2)

matrix(1:12,byrow=F,nrow=4)

goog <-c(450,451,452,445,468)
msft <- c(230,231,232,233,220)
goog
msft
stocks <- c(goog,msft)
stocks
stock.matrix <- matrix(stocks,byrow=T,nrow=2)
stock.matrix
days <- c("Mon", "Tues", "Wed", 'Thu', "Fri")
st.names <- c('GOOG', 'MSFT')
colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

stock.matrix
colSums(stock.matrix)
rowSums(stock.matrix)

colMeans(stock.matrix)

FB <- c(111,112,113,120,145)
tech.stocks <- rbind(stock.matrix,FB)

tech.stocks

avg <- rowMeans(tech.stocks)


avg
tech.stocks <- cbind(tech.stocks,avg)
tech.stocks



mat <- matrix(1:50, byrow = T, nrow = 5)


#factor()

animal <- c('d','c','d','c','c')
id <- c(1,2,3,4,5)
fact.ani <- factor(animal)


fact.temp
summary(fact.temp)
summary(temps)


a <- c(1,2,3)
b <- c(4,5,6)
rbind(a,b)

mat <- matrix(1:9,nrow=3)
class(mat)
is.matrix(mat)


mat2 <- matrix(1:25,byrow=T,nrow = 5)
mat2
mat2[2:3,2:3]

matrix(runif(20),nrow=4
)





summary(state.x77)
USPersonalExpenditure

data()
worldPhones



days <- c("Mon", "Tues", "Wed", "thurs", "Fri")
tmp <- c(22.2, 21,23,24.3,25)
rain <- c(T,T,F,F,T)

df <- data.frame(days,tmp,rain)
df
str(df)


df[,'rain']
df[1:5,c('days','tmp')]

df$tmp

df$days
df['days']


subset(df, subset= tmp>23)

sorted.tmp <- order(df['tmp'])

sorted.tmp


df[sorted.tmp,]
desc.temp <- order(-df['tmp'])
df[desc.temp,]




empty <- data.frame()
c1 <- 1:10
c1
letters

c2<- letters[1:10]
c2


df <- data.frame(col.name.1 = c1, col.name.2 = c2)
df

write.csv(df,file= 'saved_df.csv')
df2 <- read.csv('saved_df.csv')
df2
df

nrow(df)
ncol(df)
colnames(df)
rownames(df)
str(df)
summary(df)
df[[2,2]]
df[[5,'col.name.2']]
df[[2,'col.name.1']] <- 9999
df[[2,'col.name.1']]
df

df[1,]
mtcars

head(mtcars)




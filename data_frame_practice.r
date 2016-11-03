head(mtcars)

mtcars[mtcars$mpg >20,]

mtcars[mtcars$mpg >20 & mtcars$cyl == 6,c('mpg','cyl','hp')]

subset(mtcars,mpg>20 & cyl ==6)
 head(mtcars)

mtcars[,c('mpg','cyl','hp')]

any(is.na(mtcars))


df[is.na(df)] <- 0

mtcars$mpg[is.na(mtcars$mpg)] <- 0

sam <- c(22,25,26)
frank <- c(150,165,120)
amy <- c('M','M','F')
rnames <- c('Sam', 'Frank', 'Amy')
cnames <- c('Age', 'Weight', 'Sex')
df <- data.frame(sam,frank,amy)
df
colnames(df) <- cnames
rownames(df) <- rnames
df



is.data.frame(mtcars)

mat <- matrix(1:25,nrow=5)
mat
mat_df <- data.frame(mat)

is.data.frame(mat_df)

df <- mtcars
head(df)
head(mtcars)

mean(mtcars$mpg)

subset(df,cyl ==6)

mtcars[,c('am','gear','carb')]


df2 <- cbind(df,df$hp/df$wt)
colnames(df2)[11] <- 'carb'

df2

df2$

df2$permformance <- round(df2$performance,2)
df2
head(df)
mean(df[df$hp > 100 & df$wt > 2.5,c('mpg')])

df[c('Hornet Sportabout'), c('mpg')]






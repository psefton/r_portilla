#linear regression
#model <- lm({value to be predicted} ~ {variables to use to make prediction}, data = {data frame to use})
#train model and then PREDICT from that model

df <- read.csv('student-mat.csv', sep = ";")
head(df)
#check to see if there are any NA values in data frame
any(is.na(df))
str(df)

install.packages('corrgram')
install.packages('corrplot')

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)

ggplot(df,aes())

#numeric cols only
num.cols <- sapply(df,is.numeric)
#filter correlation between numeric data
cor.data <- cor(df[,num.cols])
cor.data

corrplot(cor.data)
corrgram(df)

help("corrgram")

corrgram(df,order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt)

#historgram of the output variable G3
ggplot(df,aes(x=G3)) + geom_histogram(bins = 20, alpha=0.5, fill= 'blue')

#split data into train and test set
install.packages("caTools")
library(caTools)
#set a seed
set.seed(101)
#split up sample (adds column into df with boolean value for train or test)
sample <- sample.split(df$G3,SplitRatio = 0.7)
head(df)
#70% of data -> train
train <- subset(df,sample == TRUE)
#30% of data -> test
test <- subset(df,sample == FALSE)
head(train)
head(test)

#train and build the model
model <- lm(G3 ~ . ,train)

#interpret the model
summary(model)

#plot residuals of the model
res <- residuals(model)
class(res)
res <- as.data.frame(res)
res
head(res)
#want the residuals to be evenly distributed (equal chance of being over or below answer)
ggplot(res,aes(res)) +  geom_histogram(fill='blue',alpha=0.5)

plot(model)

#predictions

G3.predictions <- predict(model,test)

results <- cbind(G3.predictions, test$G3)
colnames(results) <- c('predicted', 'actual')
results <- as.data.frame(results)
head(results)
#take car of negative values
to_zero <- function(x) {
  if(x <0) {
    return(0)
  } else {
    return(x)
  }
}
#apply zero function
results$predicted <- sapply(results$predicted,to_zero)
min(results)
#mean squared error
mse <- mean( (results$actual - results$predicted)^2)
mse
#RMSE
mse ^ 0.5

######
sse <- sum( (results$predicted - results$actual)^2)
sst <- sum( (mean(df$G3) - results$actual) ^ 2)

r2 <- 1- sse/sst
r2

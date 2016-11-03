#data viz project
#economist copy
library(ggplot2)
library(data.table)
library(csv)
econo.df <- read.csv('Economist_Assignment_Data.csv', header = TRUE)
head(econo.df)
str(econo.df)
econo.df <- econo.df[,c('Country','HDI.Rank','HDI', 'CPI', 'Region')]

pl <- ggplot(econo.df,aes(x=CPI, y=HDI)) + geom_point(aes(color=Region),size=5, shape = 21)
pl
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")
pl2 <- pl + geom_smooth(aes(group=1),method=lm,formula=y ~ log(x),se=FALSE,color='red')
pl2
pl3 <- pl2+ geom_text(aes(label = Country), color = "gray20",data = subset(econo.df, Country %in% pointsToLabel),check_overlap = TRUE)
pl4 <- pl3 + theme_bw() + scale_x_continuous(name ='Corruption Perceptions Index, 2011 (10=least corrupt)',limits = c(1,10),breaks = c(1:10))
pl4
pl5 <- pl4 + scale_y_continuous(name = 'HDI', limits = c(.2,1.0), breaks = c(.2,.4,.6,.8,1.0)) + ggtitle('Corruption and Human Development')
pl5

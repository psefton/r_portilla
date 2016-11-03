#ggplot2

install.packages('ggplot2')
library(ggplot2)
#aes = aesthetics
pl <- ggplot(data=mtcars,aes(x=mpg,y=hp))
#geom = geometries
pl + geom_point()
#facets
pl + geom_point() + facet_grid(cyl ~.)
#statistics 
pl + geom_point() + facet_grid(cyl ~.) +stat_smooth()
#coordinates
pl + geom_point() + facet_grid(cyl ~.) +stat_smooth() + coord_cartesian(xlim = c(15,25))
#theme
pl + geom_point() + facet_grid(cyl ~.) +stat_smooth() + coord_cartesian(xlim = c(15,25))
+theme_bw()

#histograms
install.packages("ggplot2movies")
library(ggplot2movies)

# DATA and AESTHETICS
pl <- ggplot(movies,aes(x=rating))
#GEOMETRIES
pl2 <- pl+ geom_histogram(binwidth = 0.1, color = 'red', fill = 'pink', alpha = 0.4)
#
pl3 <- pl2 + xlab('Movie Rating') + ylab('Num of Movies')
pl3 + ggtitle('My TITLE')

pl+ geom_histogram(binwidth = 0.1, aes(fill =..count..))

#scatterplots
df <- mtcars
head(mtcars)
#DATA and AESTHETICS
pl <- ggplot(df,aes(x = wt, y = mpg))
#GEOMETRY
pl + geom_point(aes(shape=factor(cyl),color=factor(cyl)),size = 5)
pl2 <- pl + geom_point(aes(color=hp),size = 5)
pl2 + scale_color_gradient(low='blue', high = 'red')

#barplots
df <- mpg
head(df)
#DATA AND AESTHEITCS
pl <- ggplot(df,aes(x=class))
pl + geom_bar(aes(fill=drv),position = 'fill')

#boxplots
df <- mtcars
head(df)
pl <- ggplot(df,aes(x = factor(cyl), y = mpg))

pl + geom_boxplot(aes(fill = factor(cyl))) + theme_bw()

#variable plotting
library(ggplot2movies)
p1 <- ggplot(movies,aes(x=year,y=rating))
install.packages('hexbin')
pl2 <- p1 + geom_density2d()
pl2 +scale_fill_gradient(high = 'red', low = 'blue')


#coordiates and faceting
pl <- ggplot(mpg,aes(x=displ,y=hwy))+geom_point()
pl
pl + coord_cartesian(xlim = c(1,4),ylim = c(15,30))
pl + coord_fixed(ratio = 1/3)

help("facet_grid")
pl + facet_grid(. ~ cyl)
pl + facet_grid(drv ~ cyl)


#themes
theme_set(theme_minimal())
pl <- ggplot(mtcars,aes(x=wt,y=mpg)) + geom_point()
pl + theme_fivethirtyeight()
install.packages('ggthemes')
library(ggthemes)


#excercises
head(mpg)
#histogram
ggplot(mpg, aes(x=hwy)) +geom_histogram(binwidth = 2,fill='pink') 
#barplot
ggplot(mpg, aes(x=manufacturer)) +geom_bar(aes(color = factor(cyl),fill=factor(cyl))) 

head(txhousing)
ggplot(txhousing,aes(x=sales,y=volume)) + geom_point(alpha = 0.4, color = 'blue')

ggplot(txhousing,aes(x=sales,y=volume)) + geom_point(alpha = 0.4, color = 'blue') + geom_smooth( color = 'red')

arrance()
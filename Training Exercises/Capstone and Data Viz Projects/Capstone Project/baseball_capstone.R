#data capstone project
#moneyball
library(ggplot2)

library(dplyr)
library(plotly)
batting <- read.csv('Batting.csv')
head(batting)
str(batting)

head(batting$AB)
head(batting$X2B)

batting$BA <- batting$H / batting$AB
head(batting)
tail(batting,5)
batting$OBP <- (batting$H + batting$BB + batting$HBP) / (batting$AB + batting$BB + batting$HBP + batting$SF)
batting$X1B <- batting$H - batting$X2B - batting$X3B - batting$HR
batting$SLG <- (batting$X1B+(2*batting$X2B) + (3 * batting$X3B) + (4 *batting$HR ))/batting$AB

str(batting)

salaries <- read.csv('Salaries.csv')
head(salaries)
summary(salaries)
summary(batting)
head(subset(batting,yearID >= 1985))
batting_sub <- subset(batting,yearID >= 1985)
summary(batting_sub)

head(batting_sub)

combo <- merge(batting_sub,salaries, by = c("yearID", "playerID"))
summary(combo)

lost_players <- c("giambja01", "damonjo01", "saenzol01")

lp <- subset(combo,playerID %in% lost_players & yearID == 2001) %>% select(playerID,H,X2B,X3B,HR,OBP,SLG,BA,AB)

lp

summarise(lp,total_at_bats = sum(AB),avg_obp = mean(OBP))
#total_at_bats   avg_obp
#     1469      0.3638687

combo_2001 <- subset(combo,yearID == 2001 & AB > 300)
head(combo_2001)
summary(combo_2001)


ggplot(combo_2001, aes(salary,H)) + geom_point(aes(color = teamID.x))

combo_2001 %>% select(playerID,H,X2B,X3B,HR,OBP,SLG,BA,AB,salary) %>% arrange(desc(H)) %>% slice(1:20)

replacement_id <- c("pierrju01", "pujolal01", "berkmla01")
rp <- subset(combo_2001,playerID %in% replacement_id)
rp

summarise(rp,total_at_bats = sum(AB),avg_obp = mean(OBP), total_salary = sum(salary))
summarise(lp,total_at_bats = sum(AB),avg_obp = mean(OBP))

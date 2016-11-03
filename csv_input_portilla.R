#csv files

write.csv(mtcars, file = 'my_example.csv')

read.csv('my_example.csv')
head(ex)

class(ex)

write.csv(ex, file = 'my_new_example.csv')
help("read.csv")

#Excel Files
install.packages('readxl')
library(readxl)
df <- read_excel('Sample-Sales-Data.xlsx', sheet = 'Sheet1')
head(df)
sum(df$Value)
entire.workbook <- lapply(excel_sheets('Sample-Sales-Data.xlsx'),read_excel,path="Sample-Sales-Data.xlsx")
entire.workbook

install.packages('xlsx')
library(xlsx)

head(mtcars)
write.xlsx(mtcars,"output_example_mtcars.xlsx")

#SQL with R
install.packages("‘RPostgreSQL")
require(RPostgreSQL)
????RPostgreSQL


#Web Scraping


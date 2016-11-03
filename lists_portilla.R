#lists portilla 
v <- c(1,2,3)
m <- matrix(1:10,nrow=2)
df <- mtcars
class(v)
class(m)
class(df)

my.list <- list(v,m,df)
my.list
my.named.list <-list(sample_vec = v, my.matrix = m, sample_df = df)
my.named.list

my.list[1]
my.named.list[1]
class(my.named.list['sample_vec'])

class(my.named.list$sample_vec)
class(my.named.list[['sample_vec']])


double_list <- c(my.named.list,my.named.list)
double_list
str(my.named.list)















##
## Data frames
##
rm(list = ls())

## Creation

name <- c("Albert", "Jordi", "Angels", "Emili")
age <- c(37, 44, 41, 72)
child <- c(FALSE, TRUE, FALSE, TRUE)
df1 <- data.frame(name, age, child)
df1
#     name age child
# 1 Albert  37 FALSE
# 2  Jordi  44  TRUE
# 3 Angels  41 FALSE
# 4  Emili  72  TRUE

# Under the hoods, a data frame is a list
str(df1)  
# 'data.frame':	4 obs. of  3 variables:
# $ name : Factor w/ 4 levels "Albert","Angels",..: 1 4 2 3
# $ age  : num  37 44 41 72
# $ child: logi  FALSE TRUE FALSE TRUE

# To avoid strings being treated as factors
df2 <- data.frame(name, age, child, stringsAsFactors = FALSE)
str(df2)
# 'data.frame':	4 obs. of  3 variables:
# $ name : chr  "Albert" "Jordi" "Angels" "Emili"
# $ age  : num  37 44 41 72
# $ child: logi  FALSE TRUE FALSE TRUE

## Titles (first option)

df3 <- data.frame(name, age, child)
names(df3) <- c("Name", "Age", "Child")

## Titles (second option)

df4 <- data.frame("Name" = name, "Age" = age, "Child" = child)

## Data frames related functions

df5 <- data.frame("Odd" = seq(1, 1000, by = 2), "Even" = seq(2, 1000, by = 2))

head(df5)  # shows first rows (in this case, 6)
tail(df5)  # shows last rows (in this case, 6)
dim(df5)   # 500 2

## Picking elements from a data frame

people <- df1

people[3,2]      # 41
people[3,"age"]  # 41

people[1,]
#     name age child
# 1 Albert  37 FALSE
# result as data frame with a single observation, as types are different 

people[,2]
# [1] 37 44 41 72
# result as vector, as all types are the same

people$age
# [1] 37 44 41 72
# result as vector, as all types are the same

people[[2]]
# [1] 37 44 41 72
# result as vector, as all types are the same

people[2]
#   age
# 1  37
# 2  44
# 3  41
# 4  72
# result as data frame / list 

# So, using single square brackets to subset from a dataframe, our subset will be a data frame.
# Using double square brackets or the dollar sign to subset from a dataframe, our subset will be a vector or a matrix.

people[people$age > 42,] 
#    name age child
# 2 Jordi  44  TRUE
# 4 Emili  72  TRUE

subset(people, subset = people$age > 44)
#    name age child
# 4 Emili  72  TRUE

## Extending data frame (columns)

people$height <- c(171, 169, 159, 163)  # also people[["height2"]] <- c(...)
people
#     name age child height
# 1 Albert  37 FALSE    171
# 2  Jordi  44  TRUE    169
# 3 Angels  41 FALSE    159
# 4  Emili  72  TRUE    163

weight <- c(61, 70, 51, 69)
people <- cbind(people, weight)

## Extending data frame (rows)

triki <- data.frame(name = "Triki", age = 2, child = FALSE, height = 60, weight = 4)
people <- rbind(people, triki)
people
#     name age child height weight
# 1 Albert  37 FALSE    171     61
# 2  Jordi  44  TRUE    169     70
# 3 Angels  41 FALSE    159     51
# 4  Emili  72  TRUE    163     69
# 5  Triki   2 FALSE     60      4

## Sorting data frame

sort(people$age)
# [1]  2 37 41 44 72

sorted_ages <- order(people$age)
people[sorted_ages,]
#     name age child height weight
# 5  Triki   2 FALSE     60      4
# 1 Albert  37 FALSE    171     61
# 3 Angels  41 FALSE    159     51
# 2  Jordi  44  TRUE    169     70
# 4  Emili  72  TRUE    163     69

people[order(people$weight, decreasing = TRUE),]
#     name age child height weight
# 2  Jordi  44  TRUE    169     70
# 4  Emili  72  TRUE    163     69
# 1 Albert  37 FALSE    171     61
# 3 Angels  41 FALSE    159     51
# 5  Triki   2 FALSE     60      4


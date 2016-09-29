##
## Lists
##
rm(list = ls())

## Creation

l1 <- list("April", 30, 4)
l1
# [[1]] [1] "April"
# [[2]] [1] 30
# [[3]] [1] 4
is.list(l1)  # TRUE

## Titles (first option)

names(l1) <- c("name", "days", "number")
l1
# $name [1] "April"
# $days [1] 30
# $number [1] 4

## Titles (second option)

l2 <- list(name = "May", days = 31, number = 5)
l2
# $name [1] "May"
# $days [1] 31
# $number [1] 5

## Structure representation

str(l2)
# List of 3
# $ name  : chr "May"
# $ days  : num 31
# $ number: num 5

## Picking one element from a list (double brackets to get an element)

l2[[1]]       # "May"
l2[["days"]]  # 31
l2$number     # 5

## Picking some elements from a list (single brackets to get a list)

l2[c(1, 3)]
# $name [1] "May"
# $number [1] 5

## Lists inside lists

l3 <- list(name = "June", days = 30, number = 6, previous = l2)
l3[[4]][[3]]      # 5
l3[[c(4,3)]]      # 5
l3$previous$name  # May

## Extending a list

l3$events <- c("ev1", "ev2", "ev3")
l3[["moons"]] <- c(2, 30) 
l3 <- c(l3, more = "More info")
str(l3)
# List of 7
# $ name    : chr "June"
# $ days    : num 30
# $ number  : num 6
# $ previous:List of 3
# ..$ name  : chr "May"
# ..$ days  : num 31
# ..$ number: num 5
# $ events  : chr [1:3] "ev1" "ev2" "ev3"
# $ moons   : num [1:2] 2 30
# $ more    : chr "More info"

l4 <- list(name = "Albert")
l4 <- c(l4, surname = c("Mata", "Guerra"))           # see how different list(c(...)) is from just c(...)
l4 <- c(l4, hobbies = list(c("running", "coding")))  # see how different list(c(...)) is from just c(...)
str(l4)
# List of 4
# $ name    : chr "Albert"
# $ surname1: chr "Mata"
# $ surname2: chr "Guerra"
# $ hobbies : chr [1:2] "running" "coding"

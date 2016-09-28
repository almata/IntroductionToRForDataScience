##
## Factors (categorical variables, similar to enums in other languages)
##
rm(list = ls())

## Creation

f1 <- factor(c("Hard", "Easy", "Hard", "Medium", "Hard"))
f1
# Hard   Easy   Hard   Medium Hard  
# Levels: Easy Hard Medium
str(f1)
# Factor w/ 3 levels "Easy","Hard",..: 2 1 2 3 2 (so, factors are stored as integers)

f2 <- factor(c("Hard", "Easy", "Hard", "Medium", "Hard"),
             levels = c("Easy", "Medium", "Hard"))
f2
# Hard   Easy   Hard   Medium Hard  
# Levels: Easy Medium Hard
str(f2)
# Factor w/ 3 levels "Easy","Medium",..: 3 1 3 2 3

## Category names / labels (first option)

f3 <- factor(c("W", "D", "L", "L", "D", "W"))
levels(f3) <- c("Draw", "Lose", "Win")  # must be in alphabetical order
f3
# Win  Draw Lose Lose Draw Win 
# Levels: Draw Lose Win

## Category names / labels (second option)

f4 <- factor(c("W", "D", "L", "L", "D", "W"),
             labels = c("Draw", "Lose", "Win"))  # again, must be in alphabetical order
f4
# Win  Draw Lose Lose Draw Win 
# Levels: Draw Lose Win

## Category names / labels (third option)

f5 <- factor(c("W", "D", "L", "L", "D", "W"),
             levels = c("W", "D", "L"),          # these two orders must match
             labels = c("Win", "Draw", "Lose"))  # these two orders must match
f5
# Win  Draw Lose Lose Draw Win 
# Levels: Win Draw Lose

## Nominal vs Ordinal

f6 <- factor(c("Red", "Blue", "Yellow", "Red"))
f6
# Red    Blue   Yellow Red   
# Levels: Blue Red Yellow
f6[1] > f6[2]  # NA + warning

f7 <- factor(c("Big", "Small", "Medium", "Big", "Medium"),
             ordered = TRUE,
             levels = c("Small", "Medium", "Big"))
f7
# Big    Small  Medium Big    Medium
# Levels: Small < Medium < Big (note levels are ordered now)
f7[1] > f7[2]  # TRUE

## Factors related functions

summary(f7)
# Small Medium    Big 
#     1      2      2 

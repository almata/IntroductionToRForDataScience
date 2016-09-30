##
## Graphics
##
rm(list = ls())

## Some data to have something to represent

name <- c("Albert", "Jordi", "Angels", "Emili", "Jessica", "Oscar")
sex <- c("Male", "Male", "Female", "Male", "Female", "Male")
eyes <- c("Brown", "Brown", "Green", "Gray", "Gray", "Green")
age <- c(37, 44, 41, 72, 18, 25)
child <- c(FALSE, TRUE, FALSE, TRUE, FALSE, FALSE)
height <- c(171, 169, 159, 163, 155, 180)
weight <- c(61, 70, 51, 69, 46, 83)

people <- data.frame(name, eyes, sex, age, child, height, weight)

## plot()

plot(people$sex)  # 1 categorical dimension
plot(people$age)  # 1 continuous dimension

plot(people$height, people$weight)            # 2 continuous dimensions
plot(log(people$height), log(people$weight))  # 2 continuous dimensions adjusted by log

plot(people$sex, people$eyes)  # 2 categorical dimensions (1st x-axis, 2nd y-axis)
plot(people$sex, people$age)   # 1 categorical + 1 continuous => boxplot

## hist()

hist(people$age)
hist(people$height, breaks = 4)

## Other functions

barplot(people$age)
boxplot(people$age)
pairs(people[4:5])
pairs(people[4:7])
pie(table(people$eyes))

## Graphical parameters

plot(people$height, people$weight,
     xlab = "Height",            # x-axis label
     ylab = "Weight",            # y-axis label
     main = "Height vs Weight",  # plot title
     sub  = "No correlation",    # plot subtitle
     type = "o",                 # circles and line ("l" for only line)
     col  = "red",               # orange, blue, etc
     col.main = "darkgrey",      # plot title's color
     cex.axis = 0.6,             # multiplier for labels size
     lty      = 5,               # line type (1 for solid, 2-6 different types of dashed-dotted)
     pch      = 17)              # plot symbol (circle, square, cross, etc)

par()              # shows list of current graphical parameters values
par(col = "blue")  # sets value for this parameter for current session

hist(people$age,
     xlim   = c(0, 100),
     main   = "Distribution of Age",
     xlab   = "Age [-]",
     col    = "red",
     border = "white")

## Multiple plots

par(mfrow = c(2,2))              # draw 4 plots in a 2x2 grid
plot(people$age, people$sex)     # top left
plot(people$child, people$sex)   # top right
plot(people$height, people$sex)  # bottom left
plot(people$weight, people$sex)  # bottom right

par(mfcol = c(2,2))              # draw 4 plots in a 2x2 grid
plot(people$age, people$sex)     # top left
plot(people$child, people$sex)   # bottom left
plot(people$height, people$sex)  # top right
plot(people$weight, people$sex)  # bottom right

par(mfrow = c(1,1))              # back to normal representation

grid <- matrix(c(1,1,2,3), nrow = 2, byrow = TRUE)
grid
#  1  1
#  2  3
layout(grid)
plot(people$age, people$sex)     # across all the top 
plot(people$height, people$sex)  # bottom left
plot(people$weight, people$sex)  # bottom right

layout(1)                        # back to normal representation

## Reset all parameters at once

old_par <- par()                 # before changing parameters
par(col = "red")                 # change n parameters
plot(people$child, people$sex)   # plot n graphs
par(old_par)                     # restore initial parameters

## Stack graphical elements

plot(people$weight, people$height,
     pch = 16, col = 2,
     xlab = "weight",
     ylab = "height")

lm_height <- lm(people$height ~ people$weight)
abline(coef(lm_height), lwd = 2)

# similar to abline() => points() segments() lines() text()

xco <- 69   # coordinates to center the text
yco <- 162  # coordinates to center the text
text(xco, yco, label = "someone fat", cex = 0.7)

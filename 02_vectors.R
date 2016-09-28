##
## Vectors
##
rm(list = ls())

## Creation

v1 <- c(1, 2, 3)
is.vector(v1)  # TRUE
c(1, 2, "A")   # "1" "2" "A" (automatic coercion)

## Titles (first option)

v2 <- c(1, 2, 3)
v3 <- c("t1", "t2", "t3")
names(v2) <- v3

## Titles (second option)

v4 <- c(t4 = 1, t5 = 2, t6 = 3)

names(v2)  # "t1" "t2" "t3"
names(v4)  # "t4" "t5" "t6"

## Picking some elements from a vector

v5 <- c(t1 = 10, t2 = 20, t3 = 30, t4 = 40, t5 = 50)
v5[2]               # 20
v5["t3"]            # 30
v5[c(1, 4)]         # 10 40
v5[c(4, 1)]         # 40 10
v5[c("t1", "t3")]   # 10 30
v5[-3]              # 10, 20 40 50
v5[-c(1, 3)]        # 20 40 50
v5[c(FALSE, TRUE)]  # 20 40 (automatic recycling)
v5[2:4]             # 20 30 40

## Vectors related functions

str(v5)          # shows vector's structure (actually it works not only with vectors)
length(v5)       # 5
mean(v5)         # 30
sum(v5)          # 150
sum(c(T, F, T))  # 2 (number of TRUE values)

sample(1:8, 4)      # 6 1 8 7 (randomly)
seq(2, 10, by = 2)  # 2 4 6 8 10
rep(4, 10)          # 4 4 4 4 4 4 4 4 4 4

## Vectors arithmetic

c(1, 2, 3) + c(4, 5, 6)  # 5 7 9
c(1, 2, 3) * 3           # 3 6 9 
c(1, 2, 3) - c(1, 0)     # 0 2 2 (automatic recycling, but shows warning as lengths don't match)
c(1, 2, 3) > c(0, 2, 1)  # TRUE FALSE TRUE 

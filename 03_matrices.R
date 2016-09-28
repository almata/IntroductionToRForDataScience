##
## Matrices
##
rm(list = ls())

## Creation

m1 <- matrix(1:6, nrow = 2)
m1
# 1 3 5
# 2 4 6

m2 <- matrix(1:6, nrow = 2, byrow = TRUE)
m2
# 1 2 3
# 4 5 6 

m3 <- cbind(1:3, 1:3)
m3
# 1 1 
# 2 2 
# 3 3
  
m4 <- rbind(1:3, 4:6)
m4
# 1 2 3
# 4 5 6

m5 <- rbind(m4, 7:9)
m5
# 1 2 3
# 4 5 6
# 7 8 9

m6 <- matrix(1:3, nrow = 2, ncol = 3)
m6
# 1 3 2
# 2 1 3 
# (automatic recycling)

## Titles (first option)

v1 <- c("r1", "r2", "r3")
v2 <- c("c1", "c2", "c3")
rownames(m5) <- v1
colnames(m5) <- v2 

## Titles (second option)

m7 <- matrix(1:9, nrow = 3, dimnames = list(v1, v2))

## Picking some elements from a matrix

m8 <- matrix(1:12, nrow = 3)
m8
# 1 4 7 10
# 2 5 8 11
# 3 6 9 12

m8[2,4]  # 11
m8[2,]   # 2 5 8 11
m8[,2]   # 4 5 6
m8[9]    # 9

m8[c(2,3), c(2,3)]
# 5 8
# 6 9

m8[c(TRUE, FALSE), c(FALSE, TRUE)]
# 4 10
# 6 12

## Matrices related functions

rowSums(m5)  #  6 15 24 
colSums(m5)  # 12 15 18

## Matrices arithmetic

# When we divide a matrix by a single number in R, every element in the matrix will be divided by this number. 
# In matrix calculus in R, all computations are done element-wise.
# This is not the standard linear algebra matrix multiplication, for which we should use %*% in R.
# Both vectors and matrices perform coercion when we want to store elements of different types.
# Both vectors and matrices perform recycling when necessary.

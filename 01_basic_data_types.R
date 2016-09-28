##
## Basic data types
##
rm(list = ls())

## Boolean values are TRUE (or T), FALSE (or F) and NA
a <- TRUE
class(a) # "logical"

## Numbers can be numeric, integer, double, complex
a <- 2.5
class(a) # "numeric"

a <- 2
class(a) # "numeric"

a <- 2L
class(a) # "integer"

## Strings are called character (one char or many, it doesn't matter)
a <- "hello world"
class(a) # "character"

## Introspection
a <- 42
is.logical(a)   # FALSE
is.numeric(a)   # TRUE
is.integer(a)   # FALSE
is.character(a) # FALSE

## Coercion
as.integer(42.7)  # 42
as.logical(4)     # TRUE
as.character(3)   # "3"
as.numeric("500") # 500
as.numeric("x")   # NA
as.numeric(TRUE)  # 1
as.numeric(FALSE) # 0

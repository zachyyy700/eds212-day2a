##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                                                                            ~~
##                        PARTIAL DERIVATIVE PRACTICE                       ----
##                                                                            ~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
library(tidyverse)

# define a function
eq1 <- function(x) {
  3 * x^2 + 4
}

# create values to evalute function over
my_datarange <- data.frame(x = c(1, 100))

# plot as continuous curve over specific range using 'geom_function()'
ggplot(data = my_datarange , aes(x = x)) + 
  geom_function(fun = eq1)

#......................Plotting Derivatives......................
# create new function
ct <- function(t) {
  t^3
}

# create dataframe with range of vals
my_datarange <- data.frame(t = c(-5, 5))

# plot
ggplot(data = my_datarange, aes(x = t)) + 
  geom_function(fun = ct)

# find derivative
dc_dt <- D(expr = expression(t^3), name = "t")

# store deriv. as function
dc_dt_func <- function(t) {
  3 * t^2
}

ggplot(data = my_datarange, aes(x = t)) + 
  geom_function(fun = ct, color = "red") +
  geom_function(fun = dc_dt_func, color = "blue")
#......................Partial Derivatives.......................
# create expression
f_xyz <- expression(2 * x * y - 3 * x^2 * z^3)

# take partial deriv. wrt x
df_dx <- D(expr = f_xyz, name = "x")
# wrt y
df_dy <- D(expr = f_xyz, name = "y")
#wrt z
df_dz <- D(expr = f_xyz, name = "z")

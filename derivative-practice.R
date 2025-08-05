##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
##                            Derivative practice                           ----
##~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#..................Practice using function D()...................

# create expression
my_exp <- expression(5 * x^2)

# find derivative of exp wrt x
my_derivative <- D(expr = my_exp, name = "x")

# evaluate derivative at x = 2.8
x <- 2.8

# evaluate
eval(my_derivative)

#.......................Example 2 with D().......................
# find derivative wrt x
my_derivative <- D(expr = expression((3.1 * x^4 - 28 * x)), name = "x")

# create and store a function
fx <- expression(x^2)

# find derivative wrt x
df_dx <- D(expr = fx, name = "x")

#..........................My Practice...........................
#1
gz <- expression(2 * z^3 - 10.5 * z^2 + 4.1 )
dg_dz <- D(expr = gz, name = "z")

#2
ty <- expression((2 * y^3 + 1)^4 - 8 * y^3)
dt_dy <- D(expr = ty, name = "y")

# find slope of T(y) at range of values
y <- seq(from = -0.4, to = 2.0, by = 0.1)
eval(dt_dy)

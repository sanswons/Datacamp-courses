# Consult the documentation on the mean() function
?mean

# Inspect the arguments of the mean() function
args(mean)


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate average number of views
avg_li = mean(linkedin)
avg_fb = mean(facebook)

# Inspect avg_li and avg_fb
avg_li
avg_fb

# Calculate the mean of linkedin minus facebook
mean(linkedin-facebook)


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Calculate the mean of the sum
avg_sum = mean(linkedin+facebook)

# Calculate the trimmed mean of the sum
avg_sum_trimmed = mean(linkedin+facebook, trim = 0.2)

# Inspect both new variables
avg_sum
avg_sum_trimmed


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Basic average of linkedin
mean(linkedin)

# Advanced average of facebook
mean(facebook, na.rm = TRUE)


# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, NA, 17, 14)
facebook <- c(17, NA, 5, 16, 8, 13, 14)

# Calculate the mean absolute deviation
mean(abs(mean(linkedin-facebook, na.rm = T)-(linkedin-facebook)),na.rm = T)



# Create a function pow_two()
pow_two = function(x){
      x*x
}

# Use the function 
pow_two(2)

# Create a function sum_abs()
sum_abs = function(a,b){
      abs(a)+abs(b)
}

# Use the function
sum_abs(-2,3)


# Define the function hello()
hello = function(){
      print("Hello")
      return(TRUE)
}

# Call the function hello()
hello()

# Define the function my_filter()
my_filter = function(z){
      if(z>0){
            return(z)
      } else {
            return(NULL)
      }
      
}
# Call the function my_filter() twice

my_filter(5)
my_filter(-5)



# Extend the pow_two() function
pow_two <- function(x, print_info = TRUE) {
      if (print_info==TRUE){
            print(paste(x , "to the power of two equals", x^2))
      }
      x ^ 2
}

pow_two(4, FALSE)


pow_two <- function(x) {
      y <- x ^ 2
      return(y)
}
pow_two(4)
y
x

two_dice <- function() {
      possibilities <- 1:6
      dice1 <- sample(possibilities, size = 1)
      dice2 <- sample(possibilities, size = 1)
      dice1 + dice2
}
two_dice()
res = two_dice()
res
dice1



triple <- function(x) {
      x <- 3*x
      x
}
a <- 5
triple(a)
a



increment <- function(x, inc = 1) {
      x <- x + inc
      x
}
count <- 5
a <- increment(count, 2)
b <- increment(count)
count <- increment(count, 2)



linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret = function(x){
      if(x>15){
            print("You're popular!")
            return(x)
      }else{
            print("Try to be more visible!")
            return(0)
      }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])




# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# The interpret() can be used inside interpret_all()
interpret <- function(num_views) {
      if (num_views > 15) {
            print("You're popular!")
            return(num_views)
      } else {
            print("Try to be more visible!")
            return(0)
      }
}

# Define the interpret_all() function
interpret_all = function(v, r=TRUE){ 
      total = 0
      for (i in v){
            x = interpret(i)
            total=total+x
      }
      if(r==TRUE){
            return(total)
      }else{
            return(NULL)
      }
}

interpret_all(linkedin)
interpret_all(facebook)



# The mtcars vectors have already been prepared for you
wt <- mtcars$wt
hp <- mtcars$hp

# Request the currently attached packages
search()

# Try the qplot() function with wt and hp
qplot(wt,hp)

# Load the ggplot2 package
library(ggplot2)

# Retry the qplot() function
qplot(wt,hp)


# Check out the currently attached packages again
search()


# Chunk 1
library(data.table)
require(ggvis)

# Chunk 2
library("data.table")
require(ggvis)

# Chunk 3
library(data.table)
require(ggvis, character.only = TRUE)

# Chunk 4
library(c("data.table", "ggvis"))








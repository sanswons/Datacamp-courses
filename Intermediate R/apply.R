# The vector pioneers has already been created for you
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")

# Split names from birth year: split_math
split_math = strsplit(pioneers,split = ":")

# Convert to lowercase strings: split_low
split_low=lapply(split_math, tolower)

# Take a look at the structure of split_low
str(split_low)



# Code from previous exercise:
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Write function select_first()
select_first = function(x){
      return(x[1])
}

# Apply select_first() over split_low: names
names = lapply(split_low, select_first)

# Write function select_second()
select_second = function(x){
      return(x[2])
}

# Apply select_second() over split_low: years
years = lapply(split_low, select_second)




# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, function(x){x[1]})
split_low
names <- lapply(split, function(x){x[2]})
names


# Definition of split_low
pioneers <- c("GAUSS:1777", "BAYES:1702", "PASCAL:1623", "PEARSON:1857")
split <- strsplit(pioneers, split = ":")
split_low <- lapply(split, tolower)

# Replace the select_*() functions by a single function: select_el
select_el = function(v, index){
      v[index]
}
# Call the select_el() function twice on split_low: names and years
names =lapply(split_low, select_el, 1)
years = lapply(split_low, select_el, 2)
names
years


# temp has already been defined in the workspace

# Use lapply() to find each day's minimum temperature
lapply(temp,min)

# Use sapply() to find each day's minimum temperature
sapply(temp,min)

# Use lapply() to find each day's maximum temperature
lapply(temp,max)

# Use sapply() to find each day's maximum temperature
sapply(temp,max)



# temp is already defined in the workspace

# Define a function calculates the average of the min and max of a vector: extremes_avg
extremes_avg = function(v1){
      average = (min(v1)+max(v1))/2
}



# Apply extremes_avg() over temp using sapply()
sapply(temp, extremes_avg)

# Apply extremes_avg() over temp using lapply()
lapply(temp, extremes_avg)



# temp is already available in the workspace
temp
# Create a function that returns min and max of a vector: extremes
extremes = function(v1){
      return(c(min(v1),max(v1)))
}

extremes(c(1,2,3))

# Apply extremes() over temp with sapply()
sapply(temp, extremes)

# Apply extremes() over temp with lapply()
lapply(temp, extremes)



# temp is already prepared for you in the workspace

# Create a function that returns all values below zero: below_zero

below_zero = function(v){
      x = v<0
      return(v[x])
}


# Apply below_zero over temp using sapply(): freezing_s
freezing_s = sapply(temp,below_zero)

# Apply below_zero over temp using lapply(): freezing_l
freezing_l = lapply(temp,below_zero)

# Compare freezing_s to freezing_l using identical()
identical(freezing_s,freezing_l)





# Code the basics() function
basics = function(x){
      return(c(min(x),mean(x),max(x)))
}

# Apply basics() over temp using vapply()
vapply(temp,basics, numeric(3))


# temp is already available in the workspace

# Definition of the basics() function
basics <- function(x) {
      c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))

# temp is already defined in the workspace

# Convert to vapply() expression
vapply(temp, max, numeric(1))

# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))

# Definition of get_info (don't change)
get_info <- function(x, y) { 
      if (mean(x) > y) {
            return("Not too cold!")
      } else {
            return("Pretty cold!")
      }
}

# Convert to vapply() expression
vapply(temp, get_info, y = 5, character(1))



# work_todos and fun_todos have already been defined
work_todos <- c("Schedule call with team", 
                "Fix error in Recommendation System", 
                "Respond to Marc from IT")
fun_todos <- c("Sleep", "Make arrangements for summer trip")

# Create a list: todos
todos = list(work_todos, fun_todos)
todos

# Sort the vectors inside todos alphabetically
sapply(todos, sort)
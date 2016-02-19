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


# Use sapply() to find each day's minimum temperature


# Use lapply() to find each day's maximum temperature


# Use sapply() to find each day's maximum temperature

# Import swimming_pools.csv correctly: pools
pools = read.csv("swimming_pools.csv", stringsAsFactors = FALSE)

# Check the structure of pools
str(pools)

# Import swimming_pools.csv with factors: pools_factor
pools_factor = read.csv("swimming_pools.csv")

# Check the structure of pools_factor
str(pools_factor)

# Load in the hotdogs data set: hotdogs
hotdogs = read.delim("hotdogs.txt",header = FALSE,col.names = c("type","calories","sodium"))

# Select the hot dog with the least calories: lily
lily = hotdogs[which.min(hotdogs$calories),]

# Select the observation with the most sodium: tom
tom = hotdogs[which.max(hotdogs$sodium),]

# Print lily and tom
lily
tom

# Previous call to import hotdogs.txt
hotdogs <- read.delim("hotdogs.txt", header = FALSE, col.names = c("type", "calories", "sodium"))

# Print a vector representing the classes of the columns
as.character(sapply(hotdogs, class))

# Edit the colClasses argument to import the data correctly: hotdogs2
hotdogs2 <- read.delim("hotdogs.txt", header = FALSE, 
                       col.names = c("type", "calories", "sodium"),
                       colClasses = c("factor","NULL","numeric"))


# Display the structure of hotdogs2
str(hotdogs2)

install.packages("readr")
library(readr)
install.packages("data.table")
library(data.table)

# Load the readr package
library(readr)

# Import potatoes.txt using read_delim(): potatoes
potatoes = read.delim("potatoes.txt", header = T)

# Create a subset of potatoes: potatoes_sel
potatoes_sel = data.frame(potatoes$texture, potatoes$flavor, potatoes$moistness)

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method","texture", "flavor", "moistness")

# Import potatoes.csv with read_csv(): potatoes
potatoes = read_csv("potatoes.csv", col_names = properties)

# Create a copy of potatoes: potatoes2
potatoes2 = potatoes

# Convert the method column of potatoes2 to a factor
potatoes2$method = factor(potatoes2$method)

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method", 
                "texture", "flavor", "moistness")

# Import 5 observations from potatoes.txt: potatoes_fragment

potatoes_fragment = read_tsv("potatoes.txt", col_names = properties, skip=6, n_max = 5)
class(potatoes_fragment)
# Import all data, but force all columns to be character: potatoes_char
potatoes_char  = read_tsv("potatoes.txt", col_types = "cccccccc")

# Display the structure of potatoes_char
str(potatoes_char)

# readr is already loaded

# Import without col_types
hotdogs <- read_tsv("hotdogs.txt", col_names = c("type", "calories", "sodium"))

# Display the summary of hotdogs
summary(hotdogs)

# The collectors you will need to import the data
fac <- col_factor(levels = c("Beef", "Meat", "Poultry"))
int <- col_integer()

# Edit the col_types argument to import the data correctly: hotdogs_factor
hotdogs_factor <- read_tsv("hotdogs.txt", 
                           col_names = c("type", "calories", "sodium"),
                           # Change col_types to the correct vector of collectors
                           col_types = list(fac, int, int))

# Display the summary of hotdogs_factor
summary(hotdogs_factor)
str(hotdogs_factor)

# load the data.table package
library(data.table)

# Import potatoes.txt with fread(): potatoes
potatoes = fread("potatoes.txt")

# Print out arranged version of potatoes
print(potatoes[order(potatoes$moistness,decreasing = FALSE)])

# Import 20 rows of potatoes.txt with fread(): potatoes_part
potatoes_part = fread("potatoes.txt", nrows = 20)




# fread is already loaded

# Import columns 6, 7 and 8 of potatoes.txt: potatoes
potatoes = fread("potatoes.txt",select = c(6,7,8))

# Keep only tasty potatoes (flavor > 3): tasty_potatoes
tasty_potatoes = subset(potatoes, flavor>3)

# Plot texture (x) and moistness (y) of tasty_potatoes
plot(tasty_potatoes$texture, tasty_potatoes$moistness,xlab = "Texture", ylab = "Moistness")               

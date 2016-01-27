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


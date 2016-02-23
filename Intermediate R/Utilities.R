abs(-9)
round(-1.1)
sum(1,3,5)
mean(c(16,67))
sort(rep(seq(89,18, by = -6), times = 2))


# The errors vector has already been defined for you
errors <- c(1.9,-2.6,4.0,-9.5,-3.4,7.3)

# Sum of absolute rounded values of errors
sum(abs(round(errors)))



# Don't edit these two lines
vec1 <- c(1.5,2.5,8.4,3.7,6.3)
vec2 <- rev(vec1)
vec2
# Fix the error
mean(c(abs(vec1), abs(vec2)))



# The linkedin and facebook vectors have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
li_vec = unlist(linkedin)
fb_vec = unlist(facebook)
li_vec
# Append fb_vec to li_vec: social_vec
social_vec = append(li_vec, fb_vec)
social_vec
# Sort social_vec
sort(social_vec)



# Fix me
sum(round(unlist(list(1.1,3,5))))
# Fix me
rep(seq(1, 7, by = 2), times = 7)



# Create first sequence: seq1
seq1 = seq(1,500,by=3)

# Create second sequence: seq2
seq2 = seq(1200, 900, by=-7)

# Calculate total sum of the sequences
sum(c(seq1,seq2))



Sys.Date()
Sys.time()
as.Date("1996-02-29")


# Get the current date: today
today = Sys.Date()

# See what today looks like under the hood
unclass(today)

# Get the current time: now
now = Sys.time()

# See what now looks like under the hood
unclass(now)


# Definition of character strings representing dates
str1 <- "May 23, '96"
str2 <- "2012-3-15"
str3 <- "30/January/2006"

# Convert the strings to dates: date1, date2, date3
date1 <- as.Date(str1, format = "%b %d, '%y")
date2 <- as.Date(str2, format =  "%Y-%m-%d")
date3 <- as.Date(str3, format =  "%d/%B/%Y")

# Convert dates to formatted strings
format(date1, "%A")
format(date2, "%d")
format(date3, "%b %Y")



# Definition of character strings representing times
str1 <- "May 23, '96 hours:23 minutes:01 seconds:45"
str2 <- "2012-3-12 14:23:08"

# Convert the strings to POSIXct objects: time1, time2
time1 <- as.POSIXct(str1, format = "%B %d, '%y hours:%H minutes:%M seconds:%S")
time1
time2 <- as.POSIXct(str2, format = "%Y-%m-%d %T")
time2
# Convert times to formatted strings
format(time1, format = "%M")
format(time2, format = "%I:%M %p")



# day1, day2, day3, day4 and day5 are already available in the workspace
day1
class(day1)
# Difference between last and first pizza day
day5-day1

# Create vector pizza
pizza = c(day1,day2,day3,day4,day5)

# Create differences between consecutive pizza days: day_diff
day_diff = diff(pizza)

# Average period between two consecutive pizza days
mean(day_diff)



# login and logout are already defined in the workspace
login
logout
# Calculate the difference between login and logout: time_online
time_online = abs(login  - logout)

# Inspect the variable time_online
time_online

# Calculate the total time online
sum(time_online)

# Calculate the average time online
mean(time_online)



# Convert astro to vector of Date objects: astro_dates
astro
astro_dates = as.Date(astro, format = "%d-%b-%Y")

# Convert meteo to vector of Date objects: meteo_dates
meteo
meteo_dates = as.Date(meteo, format = "%B %d, %y")

# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(meteo_dates - astro_dates))

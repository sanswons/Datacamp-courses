#Sequence of characters
#pattern existance, matching, replacement

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org", 
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl("edu",emails)

# Use grep() to match for "edu", save result to hits
hits = grep("edu", emails)
emails[hits]
# Subset emails using hits
emails[hits]



# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org", 
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grep() to match for .edu addresses more robustly
grep("@.*\\.edu$",emails)

# Use grepl() to match for .edu addresses more robustly, save result to hits
hits = grepl("@.*\\.edu$",emails)
hits
# Subset emails using hits
emails[hits]


# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org", 
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use sub() to convert the email domains to datacamp.edu (attempt 1)
sub("@.*\\.edu$","datacamp.edu",emails)

# Use sub() to convert the email domains to datacamp.edu (attempt 2)
sub("@.*\\.edu$","@datacamp.edu",emails)
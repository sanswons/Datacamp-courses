# Load in the Quandl package with the help of library() here:
library(Quandl)

# Assign your first dataset to the variable:
mydata <- Quandl("NSE/OIL")
      
# Your Quandl Package is already loaded in
library(Quandl)

# Assign the Prague Stock Exchange to:
PragueStockExchange <- Quandl("PRAGUESE/PX")

# The quantmod package is ready for use:
library(quantmod)

# Load the Facebook data with the help of Quandl
Facebook=Quandl("GOOG/NASDAQ_FB",type = "xts")

# Plot the chart with the help of candleChart()
candleChart(Facebook)


# Your Quandl Package is already loaded in
library(Quandl)

# Look up the first 3 results for 'Bitcoin' within the Quandl database:
result <- Quandl.search(query = "Bitcoin", silent = F)
      
# Print out the results
str(result)      

# Assign the data set with code BCHAIN/TOTBC
BitCoin <- Quandl("BCHAIN/TOTBC")



# Load the Quandl package
library(Quandl)

# Assign to the variable Exchange
Exchange <- Quandl("BNP/USDEUR",start_date="2013-01-01",end_date="2013-12-01")
      


# Load the Quandl package
library(Quandl)

# The result:
GDP_Change <- Quandl("FRED/CANRGDPR",transformation = "rdiff")



# Load the Quandl package
library(Quandl)

# The result:
eiaQuarterly <- Quandl("DOE/RWTC",collapse = "quarterly")
      
      
      
      
# Load the Quandl package
library(Quandl)

# Assign to TruSo the first 5 observations of the crude oil prices
TruSo <- Quandl("DOE/RWTC", sort="asc",rows=5)
      
# Print the result
TruSo
      



# The Quandl Package
library(Quandl)

# Here you should place the return:
Final <-Quandl("DOE/RWTC",sort="asc", transform="rdiff",collapse="daily", start_date="2005-01-01",end_date="2010-03-01")

     
      
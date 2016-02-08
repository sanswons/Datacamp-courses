
# ggvis is already installed for you; now load it and start playing around
install.packages("ggvis")
library(ggvis)
# change the code below to plot the disp variable of mtcars on the x axis
mtcars %>% ggvis(~disp, ~mpg) %>% layer_points()


# The ggvis packages is loaded into the workspace already

# Change the code below to make a graph with red points
mtcars %>% ggvis(~wt, ~mpg, fill := "red") %>% layer_points()

# Change the code below draw smooths instead of points
mtcars %>% ggvis(~wt, ~mpg) %>% layer_smooths()

# Change the code below to make a graph containing both points and a smoothed summary line
mtcars %>% ggvis(~wt, ~mpg) %>% layer_points() %>% layer_smooths()


# Make a scatterplot of the pressure dataset
pressure %>% ggvis(~temperature, ~pressure) %>% layer_points()

# Adapt the code you wrote for the first challenge: show bars instead of points
pressure %>% ggvis(~temperature, ~pressure) %>% layer_bars()

# Adapt the code you wrote for the first challenge: show lines instead of points
pressure %>% ggvis(~temperature, ~pressure) %>% layer_lines()

# Adapt the code you wrote for the first challenge: map the fill property to the temperature variable
pressure %>% ggvis(~temperature, ~pressure, fill = "temperature") %>% layer_points() 

# Extend the code you wrote for the previous challenge: map the size property to the pressure variable
pressure %>% ggvis(~temperature, ~pressure, fill = "temperature", size = "pressure") %>% layer_points()


# Rewrite the code with the pipe operator     
layer_points(ggvis(faithful, ~waiting, ~eruptions))
faithful %>% ggvis(~waiting, ~eruptions) %>% layer_points()

# Modify this graph to map the size property to the pressure variable
pressure %>% ggvis(~temperature, ~pressure, size = "pressure") %>% layer_points()

# Modify this graph by setting the size property
pressure %>% ggvis(~temperature, ~pressure, size := 100 ) %>% layer_points()

# Fix this code to set the fill property to red
pressure %>% ggvis(~temperature, ~pressure, fill := "red") %>% layer_points()


# Change the code to set the fills using pressure$black. pressure$black is loaded into workspace.
pressure$black = c("black"  ,      "grey80",       "grey50"  ,     "navyblue" ,    "blue" ,       
 "springgreen4" ,"green4"   ,    "green"  ,      "yellowgreen" , "yellow",    
 "orange"    ,   "darkorange"  , "orangered"  ,  "red"        ,  "magenta"     ,
"violet"      , "purple",       "purple4"    ,  "slateblue"   )
pressure %>%  ggvis(~temperature, ~pressure, fill := ~black) %>%  layer_points()

# Plot the faithful data as described in the second instruction
faithful %>% ggvis(~waiting, ~eruptions, size = ~eruptions, opacity := 0.5, fill := "blue", stroke := "black") %>% layer_points()

# Plot the faithful data as described in the third instruction
faithful %>% ggvis(~waiting, ~eruptions, stroke := "red",size := 100, fillOpacity = ~eruptions, fill := "red", shape := "cross") %>% layer_points()


# Change the code below to use the lines mark
pressure %>% ggvis(~temperature, ~pressure) %>% layer_lines()

# Set the properties described in the second instruction in the graph below
pressure %>% ggvis(~temperature, ~pressure,strokeWidth := 2,stroke := "red", strokeDash := 6) %>% layer_lines()


# change the third line of code to plot a map of Texas
library("maps")
texas <- ggplot2::map_data("state", region = "texas")
texas %>% ggvis(~long, ~lat) %>% layer_paths()

# Same plot, but set the fill property of the texas map to dark orange
texas %>% ggvis(~long, ~lat, fill := "darkorange") %>% layer_paths()




#compute_model_prediction() is a useful function to use with line graphs.
#It takes a data frame as input and returns a new data frame as output.
#The new data frame will contain the x and y values of a line fitted to the
#data in the original data frame.

faithful %>% compute_model_prediction(eruptions ~ waiting, model = "lm")

# Notice that compute_model_prediction() takes a couple of arguments. First
# we use the pipe operator to pass it the data set faithful. Then we provide
# an R formula, eruptions ~ waiting. An R formula contains two variables
# connected by a tilde, ~. compute_model_prediction() will use the variable
# on the left as the y variable for the line, and it will use the variable 
# on the right as the x variable for the line.

# Finally, compute_model_prediction() takes a model argument. This is the 
# name of the R modelling function that compute_model_prediction() should
# use to calculate the line. lm() is Rs function for building linear models.
# compute_smooth() is a special case of compute_model_prediction() where the
# model argument is set to loess by default. In this case the function will
# create a smoothed set of points.

# Compute the x and y coordinates for a loess smooth line that predicts mpg with the wt
mtcars %>% compute_smooth(mpg ~ wt)




#Using the %>% operator, extend the code on the right which you created in the last exercise 
#to plot the results of compute_smooth() with the lines mark. The plot should place pred_ on
#the x axis and resp_ on the y axis


# Use 'ggvis()' and 'layer_lines()' to plot the results of compute smooth
mtcars %>% compute_smooth(mpg ~ wt) %>% ggvis(~pred_, ~resp_) %>% layer_lines()

# Recreate the graph you coded above with 'ggvis()' and 'layer_smooths()' 
mtcars %>% ggvis(~wt, ~mpg )%>% layer_smooths()

# Extend the code for the second plot and add 'layer_points()' to the graph
mtcars %>% ggvis( ~wt ,~mpg )%>% layer_points() %>% layer_smooths()






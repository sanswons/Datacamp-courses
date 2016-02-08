# Build a histogram of the waiting variable of the faithful data set.
faithful %>% ggvis(~waiting)%>%layer_histograms()

# Build the same histogram, but with a binwidth (width argument) of 5 units
faithful %>% ggvis(~waiting)%>%layer_histograms(width = 5)



# Transform the code below: just compute the bins instead of plotting a histogram
faithful %>% compute_bin(x_var = ~waiting,width = 5)

# Combine the solution to the first challenge with layer_rects() to build a histogram
faithful %>% compute_bin(x_var = ~waiting,width=5) %>% ggvis(width = 5,x=~xmin_,x2=~xmax_,y2=~count_,y=0)%>%layer_rects()



# Combine compute_density() with layer_lines() to make a density plot of the waiting variable.
faithful %>% compute_density(x_var=~waiting) %>% ggvis(~pred_, ~resp_) %>%layer_lines()

# Build a density plot directly using layer_densities. Use the correct variables and properties.
faithful %>% ggvis(~waiting,fill:="green") %>% layer_densities() 



# Complete the code to plot a bar graph of the cyl factor.
mtcars %>% ggvis(~factor(cyl))%>% layer_bars()

# Adapt the solution to the first challenge to just calculate the count values. No plotting!
mtcars %>% compute_count(x_var=~factor(cyl))



# Both ggvis and dplyr are loaded into the workspace

# Change the code to plot a unique smooth line for each value of the cyl variable.
mtcars %>% group_by(cyl) %>% ggvis(~mpg, ~wt, stroke = ~factor(cyl)) %>% layer_smooths()

# Adapt the graph to contain a separate density for each value of cyl.
mtcars %>% group_by(cyl)%>%ggvis(~mpg) %>% layer_densities()

# Copy and alter the solution to the second challenge to map the fill property to a categorical version of cyl.

mtcars %>% group_by(cyl)%>%ggvis(~mpg, fill=~factor(cyl)) %>% layer_densities()







# Alter the graph below: separate density for each unique combination of 'cyl' and 'am'.
mtcars %>% group_by(cyl, am) %>% ggvis(~mpg, fill = ~factor(cyl)) %>% layer_densities()

# Update the graph below to map `fill` to the unique combinations of the grouping variables.
mtcars %>% group_by(cyl, am) %>% ggvis(~mpg, fill= ~interaction(cyl,am) ) %>% layer_densities()

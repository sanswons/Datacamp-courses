# Run this code and inspect the output. Follow the link in the instructions for the interactive version
faithful %>% 
      ggvis(~waiting, ~eruptions, fillOpacity := 0.5, 
            shape := input_select(label = "Choose shape:", 
                                  choices = c("circle", "square", "cross", "diamond", 
                                              "triangle-up", "triangle-down"))) %>% 
      layer_points()

# Copy the first code chunk and alter the code to make the fill property interactive using a select box


# Add radio buttons to control the fill of the plot
mtcars %>% 
      ggvis(~mpg, ~wt) %>% 
      layer_points()

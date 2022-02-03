# Function make_art

#!!!WARNING!!! Depending on your machine, this function may take several minutes!!!

make_art <- function(seed) {
  if(!require(dplyr)){
    install.packages("dplyr")
    library(dplyr)
  }
  if(!require(ggplot2)){
    install.packages("ggplot2")
    library(ggplot2)
  }
  if(!require(viridis)){
    install.packages("viridis")
    library(viridis)
  }
  if(missing(seed)) {
    pwr <- sample(seq(1, 9, by = 1), 1) # power to raise x and y
    color <- sample(viridis(1000), 1) # color of datapoints
    radians <- sample(seq(0, 2, by = .1), 1) # offset of starting point from 12 o'clock in radians.
    seq(-3, 3, by = .01) %>% # generating datapoints
      expand.grid(x = ., y = .) %>%
      ggplot(aes(x = x^pwr - sin(y), y = y^pwr - cos(x))) +
      geom_point(alpha = .05, color = color, shape = 20, size = 0) +
      theme_void() + # removes axis
      coord_polar(start = radians) + # sets the starting point coordinates for plotting
      labs(subtitle = "Random Art with geom_point")
  } else {
    set.seed(seed)
    pwr <- sample(seq(1, 9, by = 1), 1) # power to raise x and y
    color <- sample(viridis(1000), 1) # color of datapoints
    radians <- sample(seq(0, 2, by = .1), 1) # offset of starting point from 12 o'clock in radians.
    seq(-3, 3, by = .01) %>% # generating datapoints
      expand.grid(x = ., y = .) %>%
      ggplot(aes(x = x^pwr - sin(y), y = y^pwr - cos(x))) +
      geom_point(alpha = .05, color = color, shape = 20, size = 0) +
      theme_void() + # removes axis
      coord_polar(start = radians) +
      labs(subtitle = "Random Art with geom_point")
  }
}

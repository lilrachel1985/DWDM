# installing and loading tidyverse

install.packages("tidyverse")
library(tidyverse)

# Loading data 
data("diamonds")

# Getting the column names from the dataset
colnames(diamonds)

# lets look at the sample data 
head(diamonds)

# Plotting a bar plot
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.5)
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.1)

#Creating facets
ggplot(data = diamonds) +
  geom_histogram(mapping = aes(x = carat), binwidth = 0.1)+
  facet_wrap(~cut)

# Creating frequency polygon
ggplot(data = diamonds, mapping = aes(x = carat, colour = cut)) +
  geom_freqpoly(binwidth = 0.1)

## plotting a scatter plot 
ggplot(data = diamonds) +
  geom_point(mapping = aes(x = carat, y = price))

# creating boxplot
ggplot(data = diamonds, mapping = aes(x = carat, y = price)) + 
  geom_boxplot(mapping = aes(group = cut_width(carat, 0.1)))

#install package
install.packages("corrplot")

# loading corrplot
library(corrplot)
# Creating correlation matrix for diamonds dataset
D <- cor(diamonds[,c(1, 5,6,7,8,9)])
coorplot(D, method = "circle")
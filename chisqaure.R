# Loading the Mass library.  
library("MASS") 
head(Cars93)
# Creating a data frame from the main data set.  
car_data<- data.frame(Cars93$AirBags, Cars93$Type)  
print(car_data)  
# Create a table with the needed variables.
car.data = table(Cars93$AirBags, Cars93$Type) 
car.data
# Perform the Chi-Square test.
print(chisq.test(car.data))
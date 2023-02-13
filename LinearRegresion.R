
# R program to illustrate
# Linear Regression
 
# Height vector
x <- c(153, 169, 140, 186, 128,
       136, 178, 163, 152, 133)
 
# Weight vector
y <- c(64, 81, 58, 91, 47, 57,
       75, 72, 62, 49)
 
# Create a linear regression model
model <- lm(y~x)
model
# Print regression model
print(model)
 
# Find the weight of a person
# With height 182
df <- data.frame(x = 182)
result <-  predict(model, df)
result
cat("\nPredicted value of a person
               with height = 182")
print(result)
 
# Output to be present as PNG file
png(file = "linearRegGFG.png")
 
# Plot
plot(x, y, main = "Height vs Weight
                 Regression model")
abline(lm(y~x))
 
# Save the file.
dev.off()

# R program to illustrate
# Multiple Linear Regression
data(airquality)
head(airquality)
# Using airquality dataset
input <- airquality[1:50,c("Ozone", "Wind", "Temp")]
 
# Create regression model
model <- lm(Ozone~Wind + Temp,
            data = input)
 
# Print the regression model
cat("Regression model:\n")
print(model)
 
# Output to be present as PNG file
png(file = "multipleRegGFG.png")
 
# Plot
plot(model)
 
# Save the file.
dev.off()

# R program to illustrate
# Logistic Regression
 
# Using mtcars dataset
# To create the logistic model
model <- glm(formula = vs ~ wt,
             family = binomial,
             data = mtcars)
 
# Creating a range of wt values
x <- seq(min(mtcars$wt),
             max(mtcars$wt),
             0.01)
 
# Predict using weight
y <- predict(model, list(wt = x),
             type = "response")
 
# Print model
print(model)
 
# Output to be present as PNG file
png(file = "LogRegGFG.png")
 
# Plot
plot(mtcars$wt, mtcars$vs, pch = 16,
     xlab = "Weight", ylab = "VS")
lines(x, y)
 
# Saving the file
dev.off()


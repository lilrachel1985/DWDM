#view first six rows of iris dataset
head(iris)
#define Min-Max normalization function
min_max_norm <- function(x) {
    (x - min(x)) / (max(x) - min(x))
  }
#apply Min-Max normalization to first four columns in iris dataset
iris_norm <- as.data.frame(lapply(iris[1:4], min_max_norm))
#view first six rows of normalized iris dataset
head(iris_norm)
#add back Species column
iris_norm$Species <- iris$Species
#view first six rows of iris_norm
head(iris_norm)
# Standardize one variable
#standardize Sepal.Width
iris$Sepal.Width <- (iris$Sepal.Width - mean(iris$Sepal.Width))/ sd(iris$Sepal.Width)
head(iris)
#find mean of Sepal.Width
mean(iris$Sepal.Width)
#find standard deviation of Sepal.Width
sd(iris$Sepal.Width)
#Standardize several variables using the scale function
#standardize first four columns of iris dataset
iris_standardize <- as.data.frame(scale(iris[1:4]))
head(iris_standardize)

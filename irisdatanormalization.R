##Min_Max Normalization
#view first six rows of iris dataset
head(iris)
# use lapply to apply that function
#to whichever columns in the iris dataset we would like
#define Min-Max normalization function
min_max_norm <- function(x) {
  (x - min(x)) / (max(x) - min(x))
}

#apply Min-Max normalization to first four columns in iris dataset
#we are applying normalization to columns 1 to 4
iris_norm <- as.data.frame(lapply(iris[1:4], min_max_norm))

##view first six rows of normalized iris dataset
head(iris_norm)
#notice since we have sliced only columns 1 to 4 we cannot view column 5 'species'
#add back Species column
iris_norm$Species <- iris$Species
iris_norm
#column 5 is not normalized
##Z score Normalization
#1.Standardize one variable
#standardize Sepal.Width
iris$Sepal.Width <- (iris$Sepal.Width - mean(iris$Sepal.Width)) / sd(iris$Sepal.Width)
head(iris)
#The values of Sepal.Width are now scaled such that the mean is 0 and the standard deviation is 1
#find mean of Sepal.Width
mean(iris$Sepal.Width)
#the result is e-16 which is negative so it is taken as 0

#find standard deviation of Sepal.Width
sd(iris$Sepal.Width)
#standard deiation is 1
#2.Standardize two or more variables
#using scale function
#standardize first four columns of iris dataset
iris_standardize <- as.data.frame(scale(iris[1:4]))
iris_standardize
#view first six rows of standardized dataset
head(iris_standardize)
## we standardize column 1 to 4 because by default scale function attempts to
## standardize every column but we will get an error if we tried to scale(iris)
##because species column is not numeric and cannot be standardised




## This script covers the data structures in R.
## 2023-15-07
##A data structure is a particular way of organizing data in a computer so that 
##it can be used effectively. 
##The idea is to reduce the space and time complexities of different tasks. 
##Data structures in R programming are tools for holding multiple values. 
## R’s base data structures are often organized by their dimensionality (1D, 2D, or nD).

## Vectors (1D)
x = c(3, 5, 7) ## x is a variable. c() is a bulit-in R function.
print(x) ## print() is built-in R function.
y = c("Hi", "bye", "pre-mat", "pen") ## y is a variable.
print(y)

## dataframes (2D). A data-frame must have column names and every row should have a unique name.
##Each column must have the identical number of items.
##Different columns may have different data types.
classes <- c("classA", "classB", "classC")
df=data.frame(class=classes, numStudents=x)
print(df)

## matrices (2D). a rectangular arrangement of numbers in rows and columns.
nums <- c(1, 2, 3, 4, 5, 6)
myMatrix = matrix(nums, nrow = 3, ncol = 2, byrow = TRUE)
print(myMatrix)

##lists(1D). 
##A list can be a list of vectors, list of matrices, a list of characters and a list of functions and so on.
myList <- list(mat=myMatrix, df=df, students=x)
print(myList)


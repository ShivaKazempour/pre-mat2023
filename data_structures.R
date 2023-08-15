## This script covers the data structures in R.
## 2023-15-07
##A data structure is a particular way of organizing data in a computer so that 
##it can be used effectively. 
##The idea is to reduce the space and time complexities of different tasks. 
##Data structures in R programming are tools for holding multiple values. 
## R’s base data structures are often organized by their dimensionality (1D, 2D, or nD).

## famous line


## assign to a variable. Never use function names as variable names


## simple operations


## introduce functions for operations



## Vectors (1D)
x = c(3, 5, 7) ## numeric vector. c() is a bulit-in R function.
print(x) ## print() is built-in R function.
class(x)
y = c("Hi", "bye", "pre-mat", "pen") ## character vector.
print(y)
class(y)
##named vector:
names(x) <- c("value1", "value2", "value3")
print(x)
print(length(x))
##slicing:
print(x[1]) ##return the first value in x
print(x["value1"])
y3=y[3]
print(y3)

## dataframes (2D). A data-frame must have column names and every row should have a unique name.
##Each column must have the identical number of items.
##Different columns may have different data types.
classes <- c("classA", "classB", "classC")
df=data.frame(class=classes, numStudents=x)
print(df)
print(dim(df))
print(df[1,1]) ##first row and first column
print(df[3, 2]) ##third row and second column
## IMPORTANT: google engine is your BFF when writing code
## Q: what is the rownames of df? Change them to something else (rownames should be unique!) 


## matrices (2D). a rectangular arrangement of numbers in rows and columns.
nums <- c(1, 2, 3, 4, 5, 6)
myMatrix = matrix(nums, nrow = 3, ncol = 2, byrow = TRUE) ##always check the function help
print(myMatrix)
##Q: pick colnames and rownames for myMatrix.


##lists(1D). 
##A list can be a list of vectors, list of matrices, a list of characters and a list of functions and so on.
myList <- list(mat=myMatrix, df=df, students=x)
print(myList)
print[myList[[1]]]
## Q: select the second row, first column of second element of myList.


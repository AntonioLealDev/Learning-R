# Exercise 1
# Write a R program to create a list containing strings, numbers, vectors and a logical values.
my_list <- list("Pepe", 42, TRUE, c(1,2,3))
print(my_list)


# Exercise 2
# Write a R program to list containing a vector, a matrix and a list and give names to the elements in the list.
my_list <- list(c(1,2,3),
               matrix(c(1,2,3,4,5,6), nrow=2),
               list(1,2,3))
names(my_list) <- c("Vector", "Matrix", "List")
print(my_list)


# Exercise 3
# Write a R program to create a list containing a vector, a matrix and a list and give names to the elements
# in the list. Access the first and second element of the list.
my_list <- list(c(1,2,3),
               matrix(c(1,2,3,4,5,6), nrow=2),
               list(1,2,3))
names(my_list) <- c("Vector", "Matrix", "List")
print(my_list[1])
print(my_list[2])


# Exercise 4
# Write a R program to create a list containing a vector, a matrix and a list and add element at the end of the list.
my_list <- list(c(1,2,3),
               matrix(c(1,2,3,4,5,6), nrow=2),
               list(1,2,3))
my_list[4] <- "Hola"
print(my_list)


# Exercise 5 (DUDAS)
# Write a R program to select second element of a given nested list.
x <- list(list(1,2), list(3,4), list(5,6))
print(lapply(x,"[[", 2))


# Exercise 6
# Write a R program to create a list containing a vector, a matrix and a list and remove the second element.
my_list <- list(c(1,2,3),
                matrix(c(1,2,3,4,5,6), nrow=2),
                list(1,2,3))
my_list[2] <- NULL
print(my_list)


# Exercise 7 (DUDAS)
# Write a R program to create a list containing a vector, a matrix and a list and update the last element.
my_list <- list(c(1,2,3),
                matrix(c(1,2,3,4,5,6), nrow=2),
                list(1,2,3))
my_list[[3]] <- list(4,4,5)
print(my_list)


# Exercise 8
# Write a R program to merge two given lists into one list.
x <- list(1,2,3)
y <- list(4,5,6)
print(c(x, y))


# Exercise 9
# Write a R program to convert a given list to vector.
x <- list(1,2,3)
x <- unlist(x)
print(x)


# Exercise 10
# Write a R program to create a list of dataframes and access each of those dataframes from the list.
df1 <- data.frame(a = c(1,2,3), b= c(4,5,6))
df2 <- data.frame(a = c(3,2,1), b= c(6,5,4))
my_list <- list(df1, df2)
print(my_list[[1]])
print(my_list[[2]])


# Exercise 11
# Write a R program to count number of objects in a given list.
x <- list(1,2,3,4,5,6)
print(length(x))


# Exercise 12
# Write a R program to convert a given dataframe to a list by rows.
df <- data.frame(a = c(1,2,3), b = c(4,5,6), c = c(7,8,9))
my_list <- split(df, seq(nrow(df)))
print(my_list)


# Exercise 13
# Write a R program to convert a given matrix to a list.
x <- matrix(c(1,2,3,4,5,6), nrow=2)
print (x)
print (split(x, rep(1:ncol(x), each = nrow(x))))


# Exercise 14
# Write a R program to assign NULL to a given list element.
x <- list(1,2,3,4,5,6)
x[[4]] <- NULL
print(x)
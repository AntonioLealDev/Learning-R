# Exercise 1
# Write a R program to create a vector of a specified type and length.
# Create vector of numeric, complex, logical and characters types of length 6.
len = 6

x <- vector("numeric", len)
print(x)
x <- vector("complex", len)
print(x)
x <- vector("logical", len)
print(x)
x <- vector("character", len)
print(x)


# Exercise 2
# Write a R program to add two vectors of integers type and length 3.
x <- c(2,5,1)
y <- c(6,3,3)

z <- x+y
print(z)


# Exercise 3
# Write a R program to append value to a given empty vector.
x <- c()
x[1] <- 2
print(x)


# Exercise 4
# Write a R progam to multiply two vectors of integers type and length 3.
x <- c(3,4,3)
y <- c(4,5,7)
z <- x * y
print(z)


# Exercise 5
# Write a R program to divide two vectors of integers type and length 3.
x <- c(6,4,8)
y <- c(2,1,4)
z <- x/y
print(z)


# Exercise 6
# Write a R program to find Sum, Mean and Product of a Vector.
x <- c(1,2,3,4,5)
vector_sum <- sum(x)
vector_mean <- mean(x)
vector_product <- prod(x)
print(paste0("SUM: ", vector_sum))
print(paste0("MEAN: ", vector_mean))
print(paste0("PRODUCT: ", vector_product))

# Exercise 7
# Write a R program to find Sum, Mean and Product. Ignore element like NA or NaN.
x <- c(1,2,3,NA,5,NaN)
vector_sum <- sum(x, na.rm=TRUE)
vector_mean <- mean(x, na.rm=TRUE)
vector_product <- prod(x, na.rm=TRUE)
print(paste0("SUM: ", vector_sum))
print(paste0("MEAN: ", vector_mean))
print(paste0("PRODUCT: ", vector_product))


# Exercise 8
# Write a R program to find the minimum and the maximum of a Vector.
x <- c(1,2,3,4,5,6,7,8,9)
min <- min(x)
max <- max(x)
print(paste0("MIN: ", min, " - MAX: ", max))


# Exercise 9
# Write a R program to sort a Vector in ascending and descending order.
x <- c(2,5,3,7,9,4,6,1,8)
asc <- sort(x)
desc <- sort(x, decreasing = TRUE)
print(asc)
print(desc)


# Exercise 10
# Write a R program to test whether a given vector contains a specified element.
element = 15
x <- c(1,2,3,4,5,6,7,8,9)
is.element(element, x)


# Exercise 11
# Write a R program to count the specific value in a given vector.
element = 5
x <- c(1,5,2,4,5,6,5,6,7,8,5,5,5,5)
print(paste0("COUNT: ", sum(x==element)))


# Exercise 12
# Write a R program to access the last value in a given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6)
print(tail(x, n=1))


# Exercise 13 (DUDAS)
# Write a R program to find second highest value in a given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
len_x = length(x)
print (sort(x)[len_x-1])


# Exercise 14
# Write a R program to find n-th highest value in a given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
n = 4
print(sort(x, decreasing= TRUE))
print(sort(x, decreasing=TRUE)[n])


# Exercise 15
# Write a R program to find common elements from multiple vectors.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
y <- c(2,5,3)
z <- c(5,3,7)
print(intersect(intersect(x,y),z))


# Exercise 16
# Write a R program to convert given dataframe column(s) to a vector.
df <- data.frame (
  a = c(100, 150, 120),
  b = c(60, 30, 45)
)
vector <- df[["a"]]
print(vector)


# Exercise 17
# Write a R program to extract every n-th element of a given vector.
x <- 1:100
n <- 5
multiplos <- x[seq(n,length(x), n)]
print(multiplos)


# Exercise 18
# Write a R program to list the distinct values in a vector from a given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
print (unique(x))


# Exercise 19
# Write a R program to find the elements of a given vector that are not in another given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
y <- c(2,3,4,5,6)
print (setdiff(x,y))


# Exercise 20
# Write a R program to reverse the order of given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
print (rev(x))

# Exercise 21
# Write a R program to concatenate a vector.
x <- c("Hola ", "Mundo", "!")
print(paste(x, collapse=""))


# Exercise 22
# Write a R program to count number of  values in a range in a given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
print(sum(x>4 & x <8))


# Exercise 23 (DUDAS)
# Write a R program to convert two columns of a data frame to a named vector.
df <- data.frame(letter = c("A", "B", "C", "D"),
                number = c(1, 2, 3, 4))
x <- setNames(df$letter, df$number)
print(x)


# Exercise 24
# Write a R program to create a vector and find the length and the dimension of the vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
print(paste("Dimension: ", dim(x), " - Length: ", length(x)))


# Exercise 25
# Write a R program to combines two given vectors by columns, rows.
x <- c(1,2,3,4,5)
y <- c(6,7,8,9,0)
print (cbind(x,y))
print (rbind(x,y))


# Exercise 26
# Write a R program to test whether the value of the element of a given vector greater than 10 or not. 
# Return TRUE or FALSE.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
print (x > 5)


# Exercise 27
# Write a R program to add 3 to each element in a given vector. Print the original and new vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
y <- x+3
print(x)
print(y)


# Exercise 28 (DUDAS)
# Write a R program to create a vector using : operator and seq() function.
x <- 1:10
print(x)
y <- seq(1, 5, by=0.5)
print(y)
z <- seq(1, 5, length.out= 9)
print(z)

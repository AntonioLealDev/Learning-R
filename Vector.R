# Ejercicio 1
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


# Ejercicio 2
# Write a R program to add two vectors of integers type and length 3.
x <- c(2,5,1)
y <- c(6,3,3)

z <- x+y
print(z)


# Ejercicio 3
# Write a R program to append value to a given empty vector.
x <- c()
x[1] <- 2
print(x)


# Ejercicio 4
# Write a R progam to multiply two vectors of integers type and length 3.
x <- c(3,4,3)
y <- c(4,5,7)
z <- x * y
print(z)


# Ejercicio 5
# Write a R program to divide two vectors of integers type and length 3.
x <- c(6,4,8)
y <- c(2,1,4)
z <- x/y
print(z)


# Ejercicio 6
# Write a R program to find Sum, Mean and Product of a Vector.
x <- c(1,2,3,4,5)
vector_sum <- sum(x)
vector_mean <- mean(x)
vector_product <- prod(x)
print(paste0("SUM: ", vector_sum))
print(paste0("MEAN: ", vector_mean))
print(paste0("PRODUCT: ", vector_product))

# Ejercicio 7
# Write a R program to find Sum, Mean and Product. Ignore element like NA or NaN.
x <- c(1,2,3,NA,5,NaN)
vector_sum <- sum(x, na.rm=TRUE)
vector_mean <- mean(x, na.rm=TRUE)
vector_product <- prod(x, na.rm=TRUE)
print(paste0("SUM: ", vector_sum))
print(paste0("MEAN: ", vector_mean))
print(paste0("PRODUCT: ", vector_product))


# Ejercicio 8
# Write a R program to find the minimum and the maximum of a Vector.
x <- c(1,2,3,4,5,6,7,8,9)
min <- min(x)
max <- max(x)
print(paste0("MIN: ", min, " - MAX: ", max))


# Ejercicio 9
# Write a R program to sort a Vector in ascending and descending order.
x <- c(2,5,3,7,9,4,6,1,8)
asc <- sort(x)
desc <- sort(x, decreasing = TRUE)
print(asc)
print(desc)


# Ejercicio 10
# Write a R program to test whether a given vector contains a specified element.
element = 15
x <- c(1,2,3,4,5,6,7,8,9)
is.element(element, x)


# Ejercicio 11
# Write a R program to count the specific value in a given vector.
element = 5
x <- c(1,5,2,4,5,6,5,6,7,8,5,5,5,5)
print(paste0("COUNT: ", sum(x==element)))


# Ejercicio 12
# Write a R program to access the last value in a given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6)
print(tail(x, n=1))


# Ejercicio 13 ¿?¿?¿?¿?¿?¿?¿?
# Write a R program to find second highest value in a given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
len_x = length(x)
print (sort(x)[len_x-1])


# Ejercicio 14
# Write a R program to find n-th highest value in a given vector.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
n = 4
print(sort(x, decreasing= TRUE))
print(sort(x, decreasing=TRUE)[n])


# Ejercicio 15
# Write a R program to find common elements from multiple vectors.
x <- c(2,5,3,7,8,9,3,7,3,7,3,3,2,6,9,9)
y <- c(2,5,3)
z <- c(5,3,7)
print(intersect(intersect(x,y),z))


# Ejercicio 16
# Write a R program to convert given dataframe column(s) to a vector.
df <- data.frame (
  a = c(100, 150, 120),
  b = c(60, 30, 45)
)
vector <- df[["a"]]
vector


# Ejercicio 17
# Write a R program to extract every n-th element of a given vector.

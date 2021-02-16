# Exercise 1
# Write a R program to create an empty data frame.
df <- data.frame(a=integer(),
                b=double(),
                c=logical())
print(df)


# Execise 2
# Write a R program to create a data frame from four given vectors.
x <- c(1,2,3)
y <- c(2,3,4)
z <- c(3,4,5)

df <- data.frame(a=x, b=y, c=z)
print(df)


# Exercise 3
# Write a R program to get the structure of a given data frame.
str(df)


# Exercise 4
# Write a R program to get the statistical summary and nature of the data of a given data frame.
summary(df)


# Exercise 5
# Write a R program to extract specific column from a data frame using column name.
x <- df$a
print(x)


# Exercise 6
# Write a R program to extract first two rows from a given data frame.
x <- df[1:2,]
print(x)


# Exercise 7
# Write a R program to extract 3-rd and 5-th rows with 1-st and 3-rd columns from a given data frame.
x <- c(1,2,3,4,5,6)
y <- c(2,3,4,5,6,7)
z <- c(3,4,5,6,7,8)
df <- data.frame(a=x, b=y, c=z)
print(df[c(3,5),c(1,3)]) 


# Exercise 8
# Write a R program to add a new column in a given data frame.
df$d <- c(4,5,6,7,8,9)
print(df)


# Exercise 9
# Write a R program to add new row(s) to an existing data frame.
new <- data.frame(a=c(7,8), b=c(8,9), c=c(9,10), d=c(10,11))
df <- rbind(df, new)
print(df)


# Exercise 10
# Write a R program to drop column(s) by name from a given data frame.
df2 <- subset(df, select= -c(b,c))
print(df2)


# Exercise 11
# Write a R program to drop row(s) by number from a given data frame.
print(df[-c(2,4,6),])


# Exercise 12
# Write a R program to sort a given data frame by multiple column(s).
x <- c(1,1,1,66,7,6)
y <- c(56,3,32,44,2,7)
z <- c(3,233,312,45,7,15)
df <- data.frame(a=x, b=y, c=z)

print(df[order(df$a, df$b),])


# Exercise 13
# Write a R program to create inner, outer, left, right join(merge) from given two data frames.
df1 = data.frame(numid = c(12, 14, 10, 11))
df2 = data.frame(numid = c(13, 15, 11, 12))
print("Left outer Join:")
result = merge(df1, df2, by = "numid", all.x = TRUE)
print(result)
print("Right outer Join:")
result = merge(df1, df2, by = "numid", all.y = TRUE)
print(result)
print("Outer Join:")
result = merge(df1, df2, by = "numid", all = TRUE)
print(result)
print("Cross Join:")
result = merge(df1, df2, by = NULL)
print(result)


# Exercise 14
# Write a R program to replace NA values with 3 in a given data frame.
x <- c(1,1,1,NA,7,6)
y <- c(56,3,NA,NA,2,7)
z <- c(3,233,312,45,NA,NA)
df <- data.frame(a=x, b=y, c=z)
df[is.na(df)] <- 3
print(df)


# Exercise 15
# Write a R program to change a column name of a given data frame.
colnames(df)[which(names(df) == "a")] <- "A"
df


# Exercise 16
# Write a R program to change more than one column name of a given data frame.
colnames(df)[which(names(df) == "A")] <- "Hola"
colnames(df)[which(names(df) == "b")] <- "POZI"
df


# Exercise 17
# Write a R program to select some random rows from a given data frame.
df[sample(nrow(df), 3), ]


# Exercise 18
# Write a R program to reorder an given data frame by column name.
df[c("c", "Hola", "POZI")]


# Exercise 19
# Write a R program to compare two data frames to find the row(s) in first data frame that 
# are not present in second data frame.
df1 <- data.frame("a"=c(1,1,2), "b"=c(3,2,1), "c"=c(3,3,5))
df2 <- data.frame("a"=c(1,1,2), "b"=c(3,3,1), "c"=c(3,3,5))

setdiff(df1,df2)


# Exercise 20
# Write a R program to find elements which are present in two given data frames.
df1 <- data.frame("a"=c(1,1,2), "b"=c(3,2,1), "c"=c(3,3,5))
df2 <- data.frame("a"=c(1,1,2), "b"=c(3,3,1), "c"=c(3,3,5))

intersect(df1,df2)


# Exercise 21
# Write a R program to find elements come only once that are common to both given data frames.
df1 <- data.frame("a"=c(1,1,2), "b"=c(3,2,1), "c"=c(3,3,5))
df2 <- data.frame("a"=c(1,1,2), "b"=c(3,3,1), "c"=c(3,3,5))

intersect(df1,df2)


# Exercise 22
# Write a R program to save the information of a data frame in a file and display the information of the file.
save(df,file="df.rda")
load("df.rda")
file.info("df.rda")


# Exercise 23
# Write a R program to count the number of NA values in a data frame column.
x <- c(1,1,1,NA,7,6)
y <- c(56,3,NA,NA,2,7)
z <- c(3,233,312,45,NA,NA)
df <- data.frame(a=x, b=y, c=z)

sum(is.na(df$b))


# Exercise 24
# Write a R program to create a data frame using two given vectors and display the duplicated elements 
# and unique rows of the said data frame.
x <- c(1,2,4,4,4,5,2,3)
y <- c(1,3,4,4,4,0,6,6)
df <- data.frame(x,y)
print(duplicated(df))
print(unique(df))


# Exercise 25
# Write a R program to call the (built-in) dataset airquality. Check whether it is a data frame or not? 
# Order the entire data frame by the first and second column.
df <- airquality
class(df)
df <- df[order(df$Ozone, df$Solar.R),]
df


# Exercise 26
# Write a R program to call the (built-in) dataset airquality. Remove the variables 'Solar.R' and 
# 'Wind' and display the data frame.
data = airquality
data[,c("Solar.R", "Wind")]=NULL
print(head(data,3))
# Exercise 3
# Write a R program to create a sequence of numbers from 20 to 50 and find the mean of numbers from 
# 20 to 60 and sum of numbers from 51 to 91.
x <- 20:50
print(x)

print(paste("MEAN [20-60]:",mean(20:60)))
print(paste("SUM [51-91]:",sum(51:91)))


# Exercise 4
# Write a R program to create a vector which contains 10 random integer values between -50 and +50.
x <- sample(-50:50, 10)
print(x)


# Exercise 5
# Write a R program to get the first 10 Fibonacci numbers.
fib <- integer(10)
fib[1] <- 1
fib[2] <- 1
for (i in 3:10) {
  fib[i] <- fib[i-1]+fib[i-2]
}
print(fib)


# Exercise 7
# Write a R program to print the numbers from 1 to 100 and print "Fizz" for multiples of 3, print 
# "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both.
for(i in 1:100) {
  print(i)
  if(i%%3 == 0 & i%%5 == 0) {print("FizzBuzz")}
  else if (i%%5 == 0) {print("Buzz")}
  else if (i%%3 == 0) {print("Fizz")}
}


# Exercise 9
# Write a R program to find the factors of a given number.
factors <- function(n){
  for(i in 1:(n/2)){
    if(n%%i == 0){
      print(i)
    }
  }
  print(n)
}

factors(35)
factors(100)
factors(17)


# Exercise 10
# Write a R program to find the maximum and the minimum value of a given vector.
x <- c(2,5,3,7,98,3,2,43,0)
print(max(x))
print(min(x))


# Exercise 13
# Write a R program to create a list of random numbers in normal distribution and count occurrences of each value.
x <- floor(rnorm(1000, 50, 100))
occ = table(x)
print("Occurences:")
print(occ)


# Exercise 15
# Write a R program to create three vectors numeric data, character data and logical data. 
# Display the content of the vectors and their type.
x = c(1, 2, 3)
y = c("a", "b", "c")
z = c(TRUE, FALSE, TRUE, FALSE)
print(typeof(x))
print(typeof(y))
print(typeof(z))


# Exercise 22
# Write a R program to create  bell curve of a random normal distribution.
n = floor(rnorm(10000, 500, 100))
occ = table(n)
barplot(occ)


# Exercise 25
# Write a R program to create a Dataframes which contain details of 5 employees and display the details.
employees = data.frame(Name=c("Antonio","Pedro","Xenia","Noe","Marta"),
                       Gender=c("M","M","F","F","F"),
                       Age=c(34,22,25,33,32),
                       Phone=c("365483654","362383654","365412354","362313254","365423354")
)                     
print(employees)


# Exercise 26
# Write a R program to create a Data Frames which contain details of 5 employees and display summary of the data.
summary(employees)
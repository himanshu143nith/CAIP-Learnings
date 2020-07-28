#Dataframes

students <-data.frame(names=c("A", "B", "C"), roll = c(12,13,14), marks = c(99,91,92))
students

#Accessing
students$names

#mtcars data set
mtcars
dim(mtcars)

mtcars$mpg
mtcars$gear

mydataset <- mtcars

mydataset[,1]
mydataset[1,3]

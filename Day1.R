######Assignment-1####### ################
######Submitted by HIMANSHU SHARMA########
##########################################

#1)
num_vec <- seq(1:30)
paste("label", num_vec)

#######################

#2)
R <- c(2.27, 1.98, 1.69, 1.88, 1.64, 2.14)
H <- c(8.28, 8.04, 9.06, 8.70, 7.58, 8.34)

#2.a)#Volume=1/3 pi R2 H)
Volume <- (1/3)*(pi)*(R**2)*H
Volume

#2.b)
volume_2_dec <-round(Volume, digits = 2)

#2.c)
min(volume_2_dec)
max(volume_2_dec)

########################

#3)
A <- sample(0:999, 250)
B <- subset(A, A>900)#Using Subset function
B <- A[which(A>900)]#Using which function
C <- sort(B, decreasing = FALSE) #Sorted in ascending order

#######################
#4)
height<- c(180,165, 160, 193)
weight<- c(87, 58, 65, 100)
#4.a)
BMI <- (weight / (height/100)**2)
#4.b)
weight_with_BMI_above_25 <- weight[which(BMI >25)]
#4.c)
BMI_avg <- mean(BMI)

#######################

#5)
marks<-sample(0:50, 10)
#5.a)Variable p1 to store mean of marks
p1 <- mean(marks) 
#5.b)Variable p2 to store median of marks
p2 <- median(marks)

#######################

#6)
category <- c(rep("category1", 30), rep("category2", 25), rep("category3", 20))
category <- factor(category)
summary(category)

#######################

#7)
student <- list(Name = "StudentA", RollNo = 101, Gender = "Male", Marks = c(92.4, 81.3, 93.5, 95.2, 67.5 ))
#7.a)
marks_avg <- mean(student$Marks)
#7.b)
roll_no_and_marks <- list(student$RollNo, student[["Marks"]])
#7.c)
student$Marks[5] = 100

#######################

#8)
A <- matrix(data=c(1, 1, 3, 5, 2, 6, -2, -1, -3), nrow=3, ncol = 3, byrow = TRUE)
O<- A%*%A%*%A
print(O) #O is a 3 X 2 matrix with every element equals to 0. Hence A*A*A equals to 0

#######################

#9)
B <- matrix(data = c(rep(10, 15), rep(-10, 15), rep(10, 15)), nrow = 15, ncol = 3)
B_trans <- t(B)
BtB <- B_trans%*%B
print(BtB) #BtB is a 3 X 3 matrix

#######################

#10)
Age <- c(25, 31, 23)
Height <- c(177, 163, 190)
Weight <- c(57, 69, 83)
Sex <- c("F", "F", "M")
Data_Frame1 <- data.frame(Age, Height, Weight, Sex, row.names = c("Alex", "Lilly", "Mark"))

########################

#11)
Working <- c("Yes", "No", "No")
Data_Frame2 <- data.frame(Working,row.names = c("Alex", "Lilly", "Mark"))
#Adding this to the previous data frame
Data_Frame1 <- cbind.data.frame(Data_Frame1, Data_Frame2)

#11.a) Methods to get find the class
sapply(Data_Frame1, class)
#or separately
class(Data_Frame1$Age)
class(Data_Frame1$Height)
class(Data_Frame1$Weight)
class(Data_Frame1$Sex)
class(Data_Frame1$Working)

#11.b)
Height_mean <- mean(Data_Frame1$Height)

#11.c)  (BMI) is defined as (weight in kg/ (height in m) 2
BMI <- (Data_Frame1$Weight) / ((Data_Frame1$Height/100) ** 2)
Data_Frame1 <- cbind.data.frame(Data_Frame1, BMI)

########################

#12)
array_12 <- array(1:20, c(2,3,3))
array_12_2 <- array(1:10, c(2,3,3))


########################

#13)

#13.a)
mydataframe <- data.frame(mpg=mtcars$mpg, cyl=mtcars$cyl, hp=mtcars$hp,row.names = row.names(mtcars))

#13.b)
head(mtcars, 5)
tail(mtcars, 5)
mydataframe2 <- rbind.data.frame(head(mtcars, 5), tail(mtcars, 5))

##########################


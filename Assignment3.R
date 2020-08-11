######Assignment-3####### ################
######Submitted by HIMANSHU SHARMA########
##########################################

#1)
EnglandFootball <- read.csv("https://raw.githubusercontent.com/footballcsv/england/master/2010s/2013-14/eng.1.csv")
head(EnglandFootball, 6)
#Link: https://raw.githubusercontent.com/footballcsv/england/master/2010s/2013-14/eng.1.csv

#######################

#2)
movies_count <- c(7,3,4,6)
category <- c("Comedy", "Action", "Romance", "Science Fiction" )
#2.a)
pie(movies_count,  col = rainbow(length(movies_count)))
#2.b)
title(main = "Movies Released by Category")
#2.c)
pie(movies_count, labels = category, main = "Movies Released by Category", col = rainbow(length(movies_count)))

########################

#3)
barplot(movies_count, xlab = 'Movies Count', ylab = 'Categories', main = "Movies Released by Category", names.arg = category,col = rainbow(length(movies_count)))
  
#######################
#4)
ABC_quarters <- c('Q1', 'Q2', 'Q3' , 'Q4')
ABC_Products <- c('A', 'B', 'C')
Sales <- matrix(c(64,46,76,54,65,45,21,83,34,55,76,45), nrow = 3, ncol = 4, byrow = TRUE)
barplot(Sales, xlab='Quarters', ylab = 'Sales', main = "Annual Product Sales", col = c("red", "green", "yellow"), names.arg =  ABC_quarters)
legend("topright", ABC_Products, cex= 0.7, fill = c("red", "green", "yellow"))

#######################

#5)
hist(mtcars$mpg, main = 'Miles per Gallon Value Distribution', xlab = 'Car Models',col = 'yellow',border = 'blue' ,xlim = c(0,40), ylim = c(0,15))

#######################

#6)
#6.a)
plot.new()
#6.b)
axis(1)
axis(2)
#6.c)
X <- c(0.6, 0.4, 0.8, 0.3, 0.7)
Y <- c(0.7, 0.1, 0.5, 0.4, 0.9)
points(X,Y)
#6.d)
abline(h=max(Y))

#######################

#7)
drugA <- c(16, 20, 27, 40, 60)
drugB <- c(15, 18, 25, 31, 40)
plot(drugA, type = "o", col = 'red', xlab = "Dosage", ylab = "Response", main = "Response Vs Drug Dosage")
lines(drugB, type = "o", col = "blue")

#######################



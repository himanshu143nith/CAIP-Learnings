######Assignment-5####### ################
######Submitted by HIMANSHU SHARMA########
##########################################

#1)
age <- c(2, 3, 5, 7, 8)
weight <- c(14, 20, 32, 42, 44)
#1.a)
corr_coff <- cor(age, weight)
print(corr_coff)
##corr_coff = 0.9938422 ;Strong Positive Correlation

#1.b) Plotting the model
relation <- lm(weight~age)
print(relation)
plot(age, weight, col = "blue", main = "Age and Weight Regression",
     cex = 1.3, pch = 16, xlab = "Age in years", ylab = "Weight in Kgs")
abline(relation)

#1.c)
d<- data.frame(age=6)

predicted_weight <- predict(relation, d)
print(predicted_weight)


#######################
dev.off()
#2)
no_of_customers <- c(8, 7, 6, 4, 2, 1) 
distance_miles <- c(15, 19, 25, 23, 34, 40)
#2.a) Correlation
corr_coff <- cor(distance_miles, no_of_customers)
print(corr_coff)
## Corr_coff = -0.9501743 ; Strong Negative Correlation

#2.b) Plotting the model
relation <- lm(no_of_customers~distance_miles)
print(relation)
plot(distance_miles, no_of_customers, col = "blue", main = "Distance and Customer Regression",
     cex = 1.3, pch = 16, xlab = "Distance in Miles", ylab = "No. of Customers")
abline(relation)

#2.c)
#A)
d<- data.frame(distance_miles=2)

predicted_customers <- predict(relation, d)
print(predicted_customers)
#B)
d<- data.frame(no_of_customers=5)

predicted_distance <- predict(lm(distance_miles~no_of_customers), d)
print(predicted_distance)


########################
dev.off()
#3)
gr_math <- c(6, 4, 8, 5, 3.5)
gr_chem <- c(6.5, 4.5, 7, 5, 4)
#3.a) COrrelation
corr_coff <- cor(gr_math, gr_chem)
print(corr_coff)
## Corr_coff = 0.9610536; Strong Positive Correlation

#3.b) Plotting the model
relation <- lm(gr_chem~gr_math)
print(relation)
plot(gr_math, gr_chem, col = "red", main = "Grades in Maths and Chemistry Regression",
     cex =1.3, pch = 16, xlab = "Grades in Maths", ylab = "Grades in Chemistry")
abline(relation)

#3.c) Prediction
d <- data.frame(gr_math = 7.5)
predicted_gr_chem <- predict(relation, d)
print(predicted_gr_chem)


#######################
dev.off()
#4)
Height <- c(186, 189, 190, 192, 193, 193, 198, 201, 203, 205)
Weight <-c(85, 85, 86, 90, 87, 91, 93, 103, 100, 101)
#4.a) Correlation
corr_coff <- cor(Height, Weight)
print(corr_coff)
## Corr_coff = 0.9442254; Strong Positive Correlation

#4.b) Plotting the model
relation <- lm(Weight~Height)
print(relation)
plot(Height, Weight, col = "violet", main = "Height and Weight Regression",
     cex = 1.3, pch =16, xlab = "Height in cm", ylab = "Weight in Kg")
abline(relation)

#4.c) Prediction
d <- data.frame(Height = 208)
predicted_weight <- predict(relation, d)
print(predicted_weight)


#######################

dev.off()
#5)
sleep_hours <- c(6, 7, 8, 9, 10)
tele_hours <- c(4, 3, 3, 2, 1)
#5.a) Correlation
corr_coff <- cor(sleep_hours, tele_hours)
print(corr_coff)
## Corr_coff = -0.9707253; Strong Negative (Indirect) Correlation

#5.b) Plotting the model
relation <- lm (tele_hours~sleep_hours)
print(relation)
plot(sleep_hours, tele_hours, col = "orange", main = "Hours Sleeping and Television Regression",
     cex = 1.3, pch = 16, xlab = "No. of sleeping hours", ylab = "No. of hours of televison")
abline(relation)

#5.c) Prediction
d <- data.frame(sleep_hours = 8)
predicted_tele_hours <- predict(relation, d)
print(predicted_tele_hours)


#######################

#6)
#6.a)
die <- 1:6
sample_space_die <- sample(die , 3000, replace = TRUE)
print(sample_space_die)

#6.b)
numbers <- 30:70
random_numbers <- sample(numbers, 27, replace = FALSE)
print(random_numbers)

#6.c)
coin_events <- c('H', 'T')
flip_results <- sample(coin_events, 1000, replace = TRUE)
print(flip_results)


#######################
dev.off()
#7)
x<- rnorm(n =100, mean = 0, sd = 30)
print(x)
#7.a) Probablity distribution of x
y <- dnorm(x, mean = 0 , sd = 30)
round(y, 3)
plot(x,y, main = "Probablity Distribution of Normally distributed random variable", xlab = "Random Variable",
     ylab = "Proablity")

#7.b) Cumulative distribuiton of x
z <- pnorm(x, mean=0, sd=30)
round(z,3)
plot(x,z, main = "Cumulative Distribution of Normally distributed random variable", xlab = "Random Variable",
    ylab = "Cumulative Probablity")

#7.c)
p = 0.2
number <- qnorm(p, mean=0, sd =30)
print(number)

#7.d) 50% quantile value
p = 0.5
value <- qnorm(p, mean=0, sd=30)
print(value)


#######################

dev.off()
#8)
#When Mean is changed -> X axis values changes, shape of curve remain same
#When SD is changed -> Spread of the curve changes, lesser the sd, more points are converged. More the sd, points spread throughout the curve.
#When both are changed simultaneously -> Curve shifts horizontally and spread also changes.
#8.a)
x<- rnorm(n =100, mean = 0, sd = 15)
y <- dnorm(x, mean =0, sd = 15)
plot(x, y, main="Normal Distribution Curve when SD = 15", col="darkmagenta", ylab = "Probality",  xlab="Random Variable")

#8.b)
x<- rnorm(n =100, mean = 0, sd = 45)
y <- dnorm(x, mean =0, sd = 45)
plot(x, y, main="Normal Distribution Curve when SD = 45", col="blue", ylab = "Probality",  xlab="Random Variable")

#8.c)
x<- rnorm(n =100, mean = 50, sd = 30)
y <- dnorm(x, mean =50, sd = 30)
plot(x, y, main="Normal Distribution Curve when mean = 50", col="red", ylab = "Probality",  xlab="Random Variable")

#8.d)
x<- rnorm(n =100, mean = -50, sd = 30)
y <- dnorm(x, mean =-50, sd = 30)
plot(x, y, main="Normal Distribution Curve when mean = -50", col="brown", ylab = "Probality",  xlab="Random Variable")


#######################

#9)
x <- rnorm(n = 5000, sd = 5, mean = 20)
hist(x,
     main="Histogram with sd = 5 and mean  = 20",
     xlab="Random Variable",
     col="darkmagenta",
     border = "yellow"
)

#######################


#10)
mEAN = 22
vARIANCE = 25
sD = sqrt(vARIANCE)

#10.a)
num = 29
probablity_greater_than_29 <- 1 - pnorm( num, mean = mEAN, sd = sD)
print(probablity_greater_than_29)
#So probablity of normally distributed variable to be greater than 29 is 0.08075666

#10.b)
num = 17
probablity_less_than_17 <- pnorm(num, mean = mEAN, sd = sD)
print(probablity_less_than_17) #0.1586553

#10.c) Less than 15 or greater than 25
num1 = 15
num2 = 25
probablity_less_than_15_or_greater_than_25 = pnorm(num1, mean = mEAN, sd = sD) + (1 - pnorm(num2, mean = mEAN, sd = sD))
print(probablity_less_than_15_or_greater_than_25) #0.3550098


#######################


#11
#11.a)
mean <- 30
variance <- 4
sigma <- sqrt(variance)
probab1 <- 1/(sqrt(2*pi)*sigma)*exp(-((31 - mean)^2/(2*sigma^2)))

#11.b)
probab2 <- dnorm(31, mean, sigma)
print(probab1 == probab2) #TRUE. Hence verified


#######################


#12)

data = mtcars$mpg
mean_mpg <- mean(data)
median_mpg <- median(data)
sd_mpg <- sd(data)
variance_mpg <- var(data)
range_mpg <- range(data)


#######################
#######################

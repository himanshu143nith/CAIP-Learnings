#Vector
x <-c(3,5,3,5)
y <-1:34

#Function to create a vector is sequence
z <- seq(1,10,0.5)
a <- seq(12, 144, (2**2)*3)

#Vector operations

x <-11:20
y <-1:10

x+y
x-y

x <-11:22
y <- 2:4

x + y
x - y  #Recycling rule of vector operations

#Sorting 
sort(x)

#Combinging two vectors
z <- c(x, y)
 
#Vector Access
#Elements of a vector are accessed using indexing
 
x<-10:15
x[1]
x[5]
x[2:3]
#Access vector using numeric index vector
x[c(2,2,5)]
 
#Access vector using logical index vector
 
vec <-10:16
k<-c(T,T,F,F)
vec[k]
 
#Naming the vector numbers

vec1 <- 1:4
names(vec1) <- c("pehla", "dusra", "teesra", "chautha")
vec1
vec1[c("pehla", "dusra")]

#Range Indexing
x[2:3]
x[-1] #Negative indexing
x[c(-1,-3)] #Removing from two places

#Using NA instead of 0. It will show exact shape of distribution. ex. Mean may go down if 0 is included.


 
 
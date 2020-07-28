#Matrices and Arrays
#Matrices are two dimensional vectors
#Arrays are multiple dimensional vectors

#Declare a matris
M<-matrix(1:6, 2, 3, byrow = TRUE, dimnames = list(c("Row1", "Row2"), c("Col1", "Col2","Col3")))
M

#Accessing matrix elements
M['Row1', 'Col1']
M[,1]
M[2,2:3]

#Matrix operations

M1<-matrix(1:6,2,3)
M2<-matrix(1,2,3)

M1+M2

M1 * 5 - M2

#Matrix multiplication
M1%*%M2 #Row1 should be same as column of 2

cbind(M1, M2)
rbind(M1, M2)

#Arrays are used for multiple dimensions
A<-array(1:729, c(3,3,3,3,3,3))

A
#Access
A[,,3,3,3,3]


#List is used to store more than one data of different types

student <- list("Himanshu", "12345", "ABC123@", c(99, 93,93,94))
#Indexing
student[1]
student[[4]]

#Assigning
student[3]<- 34

#Replacing
student[[4]][3]<- 100

#Convert list into vector

l <-list("aa", "bb", "cc")
v <-unlist(l)
v

#Combining Lists
#There are two ways to combine list. First is to use 'c' function and second is to use 'list' function
#The 'c' function will create a new single list which contains the previous list. 
# The 'list' function will create sublists.

l1 <- list("A", "B", "C")
l2 <- list("X", "Y")
#C function
l3 <- c(l2, l1)
l3
#using list function
l4 <- list(l2, l1)
l4
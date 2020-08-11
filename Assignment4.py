####################################
#_________Assignment 4                  
# __Submitted by: Himanshu Sharma__#
####################################


####################################
#Answer 1
####################################

#!/usr/bin/python3
import math
def main():
    print("Enter coordinate values of first point: ")
    x1 = float(input("x1 : "))
    y1 = float(input("y1: "))
    print("Enter coordinate values of second point: ")
    x2 = float(input("x2: "))
    y2 =float(input("y2: "))
    distance = math.sqrt(math.pow(y2-y1, 2) + math.pow(x2 - x1, 2))
    distance = round(distance, 2)
    print("Distance between two points in XY plane: " +  str(distance))
if __name__ == "__main__":
    main()


####################################
#Answer 2
####################################

#!/usr/bin/python3
from math import sqrt
from math import pow
def distance_bw_two_points(x1, y1, x2, y2):
    return sqrt(pow(y2-y1, 2) + pow(x2 - x1, 2))

def main():
    print("Enter coordinate values of first point: ")
    x1 = float(input("x1 : "))
    y1 = float(input("y1: "))
    print("Enter coordinate values of second point: ")
    x2 = float(input("x2: "))                               
    y2 =float(input("y2: "))
    distance = distance_bw_two_points(x1, y1, x2, y2)
    distance = round(distance, 2)
    print("Distance between two points in XY plane: " +  str(distance))


if __name__ == "__main__":
    main()


####################################
#Answer 3
####################################

#!/usr/bin/python3
def prime_check(number):
    if number > 1:
        for i in range(2, number):
            if (number % i) == 0:
                return "Not Prime"
        else:
            return "Prime"
    else:
        return "Not Prime"

def main():
    num = input("Please enter a number: ")
    result = prime_check(num)
    print(result)
if __name__ == "__main__":
    main()


####################################
#Answer 4
####################################

#!/usr/bin/python3
def no_of_palindrome(sentence):
    #put every word of a sentence in a list
    collection = sentence.split()
    count_palind = 0
    for i in range(0,len(collection)):
        if collection[i] == collection[i][::-1]:
            count_palind = count_palind + 1
    return count_palind

def main():
    sentence = "well hello racecar palindrome pop dad radar rotator repaper testset bob lamal anything test"
    total_palin = no_of_palindrome(sentence)
    print("Total Palindromes in sentence:", total_palin)

if __name__ == "__main__":
    main()


####################################
#Answer 5
####################################


#!/usr/bin/python3
def word_count(sentence):
    wc = dict()
    word_list = sentence.split()
    for i in word_list:
        wc[i] = word_list.count(i)
    return wc
def main():
    sentence = "the quick brown fox jumps over the lazy dog the quick brown fox"
    wc = word_count(sentence)
    print("Words in the given sentence: ", wc)
if __name__ == "__main__":
    main()

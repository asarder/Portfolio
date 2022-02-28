#!/usr/bin/python3
#Author: Abu Sarder
#Date: 28/02/2022

#find out the password with numbers and letters

#Imprt random library 

import random
import time
startTime = time.time()

#all numbers and letters in variable

num_letters = "0123456789AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"
pWord_list = list(num_letters)
password = input ("Enter Password you looking for:")
find = ""
while (find != password):
    find = random.choices(pWord_list, k=len(password))
    print(find)
    find = "".join(find)
    print(find)
   
print("The password is: " + find)
    
endTime = time.time()
elapsedTime = endTime - startTime
print("It took", elapsedTime, "second to crack the password")



#Reference: Brute Force Password Cracker : https://www.youtube.com/watch?v=P5Lt8J3_ZnI
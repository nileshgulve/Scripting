#!/bin/bash

paste filex filey
echo "#########################"
awk 'NR==FNR{a[$2]=$1} ($1 in a){print a[$1], $1, $2}' filex filey 

#Q. Task 3
#Content of filex
#Name Marks
#Usera 10
#Userb 20
#Userc 30
#Userd 4
#
#Content of filey
#Marks PRN
#5           123456986
#10         476437964
#30         690765433
#
#So filex has columns Name and marks
#Filey has columns marks and prn
#
#Create a filez which will.contain 3 columns
#Name Marks and PRN of those users whose marks match in filex and filey

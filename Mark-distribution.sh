# Input
#Name,Surname,Class,TotalMarks,MarksDistribution
#Lavish,Jhamb,Class-1,2,English:2
#Bob,Marley,Class-9,5,English:2 Sanskrit:1 Maths:1 Science:1
#
#Output required
#Name,Surname,Class,TotalMarks,Science,Maths,Hindi,English,Sanskrit,Sports
#Lavish,Jhamb,Class-1,2,0,0,0,2,0,0
#Bob,Marley,Class-9,5,1,1,0,2,1,0
#
#Basically you need to work on last section only i.e  MarksDistribution
#Marks need to be broken in to -  Science,Maths,Hindi,English,Sanskrit,Sports
#
#Input provides marls like this -  English:2
#This means he got 2 marks in english and 0 in rest.

#!/bin/bash
echo "name :"
read -a name
echo " surname :"
read -a surname
echo -n " class : "
read class
echo -n "maths :"
read maths
if [ -z "$maths" ]
then
echo "0"
maths=0
else
echo "$maths"
fi
echo -n "english :"
read english
if [ -z "$english" ]
then
echo "0"
english=0
else
echo "$english"
fi

echo -n "sport :"
read sport
if [ -z "$sport" ]
then
echo "0"
sport=0
else
echo "$sport"
fi

echo -n "hindi :"
read hindi
if [ -z "$hindi" ]
then
echo "0"
hindi=0
else
echo "$hindi"
fi
echo -n "sanskrit  :"
read sanskrit
if [ -z "$sanskrit" ]
then
echo "0"
sanskrit=0
else
echo "$sanskrit"
fi
sum=$(($maths + $english + $sport + $hindi + $sanskrit))
echo "name            surname     class        TotalMark      MarkDistribution "
echo "${name[0]}   ${surname[0]},class-$class,   ${sum[0]},      $maths,$english,$sport,$hindi,$sanskrit"


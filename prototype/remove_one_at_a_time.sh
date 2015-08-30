#!/bin/bash

ROOT_DAT=../data
DOG=true

#make a working copy of the table
cp $ROOT_DAT/beer.sas7bdat $ROOT_DAT/beer_tmp.sas7bdat



#get first length
#echo "TRYING TO SETUP LENGTH"
#echo $( wc -c "$ROOT_DAT/beer_tmp.sas7bdat" )
#len=$( wc -c "$ROOT_DAT/beer_tmp.sas7bdat" )
#echo $len


#set flag
#DOG=true


python test_saspy.py $ROOT_DAT/beer_tmp.sas7bdat

let len=$(stat -c%s "$ROOT_DAT/beer_tmp.sas7bdat")-1
echo "Length: " $len

head -c $len $ROOT_DAT/beer_tmp.sas7bdat > $ROOT_DAT/beer_tmp.sas7bdat

python test_saspy.py $ROOT_DAT/beer_tmp.sas7bdat







#for i in {1..10}
#while $DOG;
#do
#	echo "try to decode"
	#try decoding the data file  should set $? = 1 if it works, $? = 0 if it doesnt.
		
#	pig=$1

#	echo "print success   "
#	echo $pig


	#if $=1, then we set the flag to  false

#	echo "check if it worked"
#	if [ $? -eq 0 ]; then 
#		DOG=false	
#		echo "wooooohoooo";
#3	fi


	
##	cow=$(($len-1))
#	echo "new length: " $cow



		

#done

#echo $?
#if [$? ne 0]; 
#then
#	echo "woohoo"
#else 
#	echo "nooooo"
#fi


#while $DOG;
#	do 
#	python test_saspy.py $ROOT_DAT/beer_tmp.sas7bdat

#if [ $? -ne 0 ]; 
#then
#	DOG=true
#else
#	DOG=false
#fi

#echo $( wc -c "$ROOT_DAT/beer_tmp.sas7bdat" | awk '{print $1}') -1

#head -c $( wc -c "$ROOT_DAT/beer_tmp.sas7bdat" | awk '{print $1}') $ROOT_DAT/beer_tmp.sas7bdat > $ROOT_DAT/beer_tmp.sas7bdat


#done





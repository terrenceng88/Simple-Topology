#!/bin/bash 



for file in *; do #for loop to go through every file in current directory
	#sed -n 2~2p $file #does not print "filename: "
	
	let counter=0;	
	while read line; do
		if [ $((counter%2)) -eq 1 ] 
		then
			echo "$file: $line"
		fi #ends if statement
		((counter++))
	done < "$file" #closes file
done

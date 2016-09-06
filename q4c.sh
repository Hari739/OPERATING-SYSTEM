#searching for the word module
#!bin/bash
tput clear
cd ../ass1/ftest
for item in *
do 
    if [ -f $item ]
    then
	echo "\033[1mFile($item) content:\033[0m"
	cat $item
	echo "\033[1mNumber of times 'module' appeared in $item is:\033[0m\c"
	grep -io '\<module\>' $item | wc -l
	echo "\033[1mLines no. having 'module'in the text are :\033[0m\c"
	grep -i -n '\<module\>' $item
	fi
done
echo "\033[1mTotal count of the word 'module' in the files are:\033[0m\c"
grep -io '\<module\>' test* | wc -l









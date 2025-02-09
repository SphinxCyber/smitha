#!/bin/bash
read -p 'Enter a password: ' n
s=${#n}
if [ "$s" -gt 8 ];then
	if [[ "$n" =~ [a:z] ]] && [[ "$n" =~ [A:Z] ]] && [[ $n =~ [0-9] ]] && [[ "$n" =~ [[:punct:]] ]];then
		echo 'It is a strong password'
	else
		if ! [[ "$n" =~ [a:z] ]]; then
			echo 'Weak Password! It should contain atleast one lowercase letters'
		fi
		if ! [[ "$n" =~ [A:Z] ]]; then
			echo 'Weak Password! It should contain atleast one uppercase letters'
		fi
		if ! [[ "$n" =~ [0-9] ]]; then
			echo 'Weak Password! It should contain atleast one numbers'
		fi
		if ! [[ "$n" =~ [[:punct:]] ]]; then
			echo 'Weak Password! It should contain atleast one punctuation'
		fi
	fi
else
	echo 'Weak Password! It should atleast contain 8 characters'
fi

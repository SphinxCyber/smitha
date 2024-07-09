read -p 'Enter an object: ' n
if [ -e $n ]; then
	if [ -d $n ]; then
		echo 'It is a directory'
	elif [ -f $n ]; then
		if [ -x $n ]; then
			echo 'It is a file and has an executable permission'
		else
			chmod +x $n
			echo 'It is a file without executable permission but the permission has been granted now'
		fi
	else
		echo 'It is neither a file nor a directory'
	fi
else
	echo 'The object does not exist'
fi

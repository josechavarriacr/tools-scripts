# @Author: Jose Chavaría
# @Date:   2018-03-25 13:50:19
# @Last Modified by:   Jose Chavaría
# @Last Modified time: 2018-03-25 14:43:38

#!/bin/bash

#Start Input Pass MySQL
echo "Welcome to BackUp Manager"
echo "Input your MySQL password for root :"
read pass
mysql -u root -p$pass -e 'show databases;'
if [ $? -eq 0 ]; then
	echo "Select One Database: "
	read db
	echo "You selected: $db"
	user="root"
	path="/home/jose/Projects/lab/"
	cd $path 
	new_dir=`date +%Y-%m-%d`
	sudo mkdir -p $new_dir
	cd $new_dir
	filename="$new_dir-`date +%Y-%m-%d.%H-%M-%S`.sql"
	echo "Database name $filename..."

	mysqldump -u $user -p$pass $db > $filename
	if [ $? -eq 0 ]; then
		#Start Animated
		count=0
		total=10
		pstr="[=======================================================================]"
		while [ $count -lt $total ]; do
			sleep 0.5 
			count=$(( $count + 1 ))
			pd=$(( $count * 73 / $total ))
			printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
		done
		#End Animated
		echo "Saved database to $path$new_dir"
	else
		echo "Database name not exists"
	fi
else
	echo "Password is incorrect"
fi
#End Input Pass MySQL


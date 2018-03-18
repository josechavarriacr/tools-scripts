# @Author: Jose Chavaría
# @Date:   2018-03-18 01:15:51
# @Last Modified by:   Jose Chavaría
# @Last Modified time: 2018-03-18 02:29:24


 #!/bin/sh
 db="test"
 user="root"
 path="/home/jose/Projects/lab/"
 new_dir=`date +%Y-%m-%d`
 cd $path 
 sudo mkdir -p $new_dir
 cd $new_dir
 filename="$new_dir-`date +%Y-%m-%d.%H-%M-%S`.sql"
 echo "Database name $filename..."
 mysqldump -u $user -p $db > $filename
 echo "Saved database to $path$new_dir..."

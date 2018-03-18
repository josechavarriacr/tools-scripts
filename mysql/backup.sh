# @Author: Jose Chavaría
# @Date:   2018-03-18 01:15:51
# @Last Modified by:   Jose Chavaría
# @Last Modified time: 2018-03-18 01:41:35


 #!/bin/sh
 db = "name_db"
 filename="./path/to/dir-`date +%Y-%m-%d.%H-%M-%S`.sql"
 mysqldump -u root -p $db > /respaldosql/db2.sql
 cd /home/youuser/backupsql/
 tar -zcvf backupsql_$(date +%d%m%y).tgz *.sql
 find -name '*.tgz' -type f -mtime +2 -exec rm -f {} \;
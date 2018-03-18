# @Author: Jose Chavaría
# @Date:   2018-03-18 01:50:12
# @Last Modified by:   Jose Chavaría
# @Last Modified time: 2018-03-18 02:16:15
mysqldump -u root -p test > backup_name.sql

mysqldump -uuser -ppass --single-transaction --routines --triggers --all-databases > backup_db.sql
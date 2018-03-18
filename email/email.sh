# @Author: Jose Chavaría
# @Date:   2018-03-18 02:35:12
# @Last Modified by:   Jose Chavaría
# @Last Modified time: 2018-03-18 02:37:11
curl -s --user 'api:key-156b64a3284852b151400b91c459062b' \
https://api.mailgun.net/v3/sandbox53ac38b09d9d407cb347c18b1430ec37.mailgun.org/messages \
-F from='Excited User <excited@samples.mailgun.org>' \
-F to='email_adsress' \
-F subject='Hello' \
-F text='Testing some Mailgun awesomeness!' \
--form-string html='<html>HTML version of the body</html>' \
-F attachment=@/path/to/dir/file.pdf


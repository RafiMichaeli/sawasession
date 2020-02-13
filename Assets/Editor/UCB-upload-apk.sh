#!/bin/bash

APP_TOKEN='2b7c2001126cbbfb221535b6e0d3728f2bf5d9f3'
BUILD_TARGET="*"

# echo $1
# echo $2
# env 
# echo "===="
# find $1 -ls
# echo "====="
# find $2 -ls
# echo "====="
# find . -ls
# echo "====="
# find / -ls
# echo "====="

curl https://upload.testfairy.com/api/upload \
    -F "api_key=${APP_TOKEN}" \
    -F "apk=@$2/${BUILD_TARGET}.apk" \
#   -F testers_groups='' \
#   -F notify='on'
#   -F release_notes='testing connection to upload api'
#   -F tags='UnityCB'

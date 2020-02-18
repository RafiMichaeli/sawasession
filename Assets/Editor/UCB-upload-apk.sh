#!/bin/bash -x

APP_TOKEN='2b7c2001126cbbfb221535b6e0d3728f2bf5d9f3'

env


curl -v https://upload.testfairy.com/api/upload \
    -F "api_key=${APP_TOKEN}" \
    -F "file=@$WORKSPACE/.build/last/default-android/Default Android.apk"

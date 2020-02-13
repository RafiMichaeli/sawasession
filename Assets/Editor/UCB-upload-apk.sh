#!/bin/bash

APP_TOKEN='2b7c2001126cbbfb221535b6e0d3728f2bf5d9f3'
BUILD_TARGET="androidCB"

curl https://upload.testfairy.com/api/upload \
    -F "api_key=${APP_TOKEN}" \
    -F "ipa=@$2/${BUILD_TARGET}.apk" \
    -F testers_groups='' \
    -F notify='on'
    -F release_notes='testing connection to upload api'
    -F tags='UnityCB'
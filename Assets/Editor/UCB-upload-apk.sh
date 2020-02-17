#!/bin/bash -x

APP_TOKEN='2b7c2001126cbbfb221535b6e0d3728f2bf5d9f3'

curl -v https://upload.testfairy.com/api/upload \
    -F "api_key=${APP_TOKEN}" \
    -F "ipa=@$WORKSPACE/.build/last/default-ios/build.ipa"

#   -F "ipa=@/BUILD_PATH/testfairy.sawsessions.default-ios/.build/last/default-ios/build.ipa"
#   -F testers_groups='' \
#   -F notify='on'
#   -F release_notes='testing connection to upload api'
#   -F tags='UnityCB'

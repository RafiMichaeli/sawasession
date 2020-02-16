#!/bin/bash

APP_TOKEN='2b7c2001126cbbfb221535b6e0d3728f2bf5d9f3'
BUILD_TARGET="*"

brew install jq
curl -X GET -H "Content-Type: application/json"  -H "Authorization: Basic 946d7ecb0c817c4f2c166fba0ec0fe84" "https://build-api.cloud.unity3d.com/api/v1/orgs/testfairy/projects/sawsessions/buildtargets/default-ios/builds?per_page=1&page=1" | jq


curl https://upload.testfairy.com/api/upload \
    -F "api_key=${APP_TOKEN}" \
    -F "ipa=@$2/${BUILD_TARGET}.apk" \
#   -F testers_groups='' \
#   -F notify='on'
#   -F release_notes='testing connection to upload api'
#   -F tags='UnityCB'

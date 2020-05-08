#!/bin/bash

rm features.zip
zip -r features.zip src/test/resources/features/ -i \*.feature

BASE_URL=https://xray.cloud.xpand-it.com
BASE_URL=https://xray-staging.cloud.xpand-it.com

# Xray Cloud
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" "$BASE_URL/api/v1/authenticate"| tr -d '"')
curl -H "Content-Type: multipart/form-data" -H "Authorization: Bearer $token"  -F "file=@features.zip" "$BASE_URL/api/v1/import/feature?projectKey=CALC"


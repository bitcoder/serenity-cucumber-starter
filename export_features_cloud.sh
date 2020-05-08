#!/bin/bash


rm features.zip
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" https://xray-staging.cloud.xpand-it.com/api/v1/authenticate| tr -d '"')
curl -H "Content-Type: application/json" -X GET -H "Authorization: Bearer $token" "https://xray-staging.cloud.xpand-it.com/api/v1/export/cucumber?filter=10315" -o features.zip

rm -rf features/*
unzip -o features.zip  -d features


#!/bin/bash

curl -u admin:admin  "http://192.168.56.102/rest/raven/1.0/export/test?filter=13100&fz=true" -o features.zip
rm -rf features/*
unzip -o features.zip  -d features

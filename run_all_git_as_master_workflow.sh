#!/bin/bash

./import_features.sh
rm features/*.feature
./export_features.sh
./run_tests.sh
./import_results.sh


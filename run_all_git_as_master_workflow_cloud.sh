#!/bin/bash

./import_features_cloud.sh
rm features/*.feature
./export_features_cloud.sh
./run_tests.sh
./import_results_cloud.sh


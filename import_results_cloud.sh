# Xray Cloud
token=$(curl -H "Content-Type: application/json" -X POST --data @"cloud_auth.json" https://xray-staging.cloud.xpand-it.com/api/v1/authenticate| tr -d '"')
curl -H "Content-Type: application/json" -X POST -H "Authorization: Bearer $token"  --data @"target/serenity-reports/cucumber_report.json" https://xray-staging.cloud.xpand-it.com/api/v1/import/execution/cucumber

curl -H "Content-Type: application/json" -X POST -u admin:admin --data @"target/serenity-reports/cucumber_report.json" http://192.168.56.102/rest/raven/1.0/import/execution/cucumber

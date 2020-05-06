rm -r target/serenity-reports/*
mvn clean verify -Denvironment=staging -Dcucumber.features="features/"

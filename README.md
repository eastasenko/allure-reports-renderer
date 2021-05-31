# allure-docker

Socker image for rendering allure HTML reports from allure results

## How to use

Build image

```
docker buils -t allure-report .
```

Generate allure report from exesting allure result
```
docker run -v "/$(pwd)/allure-results:/var/allure/allure-results" -v "/$(pwd)/allure-report:/var/allure/allure-report" allure-report allure generate allure-results --clean -o allure-report
```

allure-results - directory with allure results. Valid allure results files should be provided
allure-report - directory used for genarated result
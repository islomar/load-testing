# k6
* https://docs.k6.io/docs/welcome
* https://github.com/loadimpact/k6
* https://hub.docker.com/r/loadimpact/k6/


## General
* Open source
* JS and Go
* CI/CD integration: 
    - https://loadimpact.com/integrations/performance-testing-jenkins/
    - https://github.com/loadimpact/k6-jenkins-example


## Running k6
* `k6 run github.com/loadimpact/k6/samples/http_get.js`
* `docker run loadimpact/k6 run github.com/loadimpact/k6/samples/http_get.js`
* Code inside default is called "VU code", and is run over and over for as long as the test is running. Code outside of it is called "init code", and is run only once per VU.
* You can include the options (e.g. `vus`, `duration` inside the JS file)
* **Script.js example**
    * `k6 run script.js`
    * `docker run -i loadimpact/k6 run - <script.js`
* Adding more VUs
    * `k6 run --vus 10 --duration 30s script.js`
    * `docker run -i loadimpact/k6 run --vus 10 --duration 30s - <script.js`
* Stages: ramping up/down VUs
    * script-with-stages.js
* Using checks
    * script-with-checks.js    
* Results output
    * https://docs.k6.io/docs/results-output
    * https://docs.k6.io/docs/result-metrics
    * E.g. to JSON: `k6 run --out json=my_test_result.json script.js`
    * jq scripts examples under `scripts` folder
* You can define groups and subgroups inside the JS file.

## Doubts
* What does *iterations* mean?
* How is done the vu ramp up exactly?
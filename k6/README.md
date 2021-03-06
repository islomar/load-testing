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
* You can include both setup() and teardown()
    * https://docs.k6.io/docs/test-life-cycle
* InfluxDB + Grafana:
    * https://docs.k6.io/docs/influxdb-grafana#section-using-our-docker-compose-setup
    * http://localhost:3000
* Grafana    
    * Premade Grafana dashboards for k6: https://grafana.com/grafana/dashboards/2587


### Results output
* https://docs.k6.io/docs/results-output
* https://docs.k6.io/docs/result-metrics
* E.g. to JSON: `k6 run --out json=my_test_result.json script.js`
* jq scripts examples under `scripts` folder
* You can define groups and subgroups inside the JS file.
* InfluxDB output:
    * Detailed statistics can be sent directly to an InfluxDB instance
    * `scripts/start-influxdb.sh`
    * `k6 run --out influxdb=http://localhost:8086/k6 script.js`
* StatsD output
    * k6 can also push the metrics to a StatsD service like:
    * `k6 run --out statsd script.js`
* Multiple outputs
    * `k6 run --out json=test.json --out influxdb=http://localhost:8086/k6`


## Doubts
* What does *iterations* mean?
* How is done the vu ramp up exactly?
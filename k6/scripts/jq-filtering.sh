#!/usr/bin/env bash

jq '. | select(.type=="Point" and .metric == "http_req_duration" and .data.tags.status >= "200")' myscript-output.json
#!/usr/bin/env bash

## average
jq '. | select(.type=="Point" and .metric == "http_req_duration" and .data.tags.status >= "200") | .data.value' myscript-output.json | jq -s 'add/length'

## min
jq '. | select(.type=="Point" and .metric == "http_req_duration" and .data.tags.status >= "200") | .data.value' myscript-output.json | jq -s min

## max
jq '. | select(.type=="Point" and .metric == "http_req_duration" and .data.tags.status >= "200") | .data.value' myscript-output.json | jq -s max

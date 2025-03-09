#!/bin/bash
curl -X POST "http://127.0.0.1:8087/CoreAdmin/rules/evaluate" \
     -H "Content-Type: application/json" \
     -d @request.json \
     | jq

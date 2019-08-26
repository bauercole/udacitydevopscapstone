#!/usr/bin/env bash

PORT=8000
echo "Port: $PORT"

# POST method predict
curl -d '{
   "name" : "Cole",
   "age" : "28",
   "occupation" : "Technical Engineer"
}'\
     -H "Content-Type: application/json" \
     -X POST http://127.0.0.1:$PORT/user/Cole

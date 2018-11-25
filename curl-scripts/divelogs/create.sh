#!/bin/bash

curl --include --request POST 'http://localhost:4741/divelogs' \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "divelog": {
      "city": "'"${CITY}"'",
      "country": "'"${COUNTRY}"'",
      "site": "'"${SITE}"'",
      "date": "'"${DATE}"'",
      "time": "'"${TIME}"'"
    }
  }'

echo

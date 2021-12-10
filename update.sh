#!/bin/sh

openapi-generator generate \
-i https://api.twitter.com/2/openapi.json \
-g swift5 -o /Desktop/TwitterAPI/ \
--additional-properties=responseAs=AsyncAwait,hashableModels=false
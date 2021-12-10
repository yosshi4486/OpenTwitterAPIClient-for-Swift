#!/bin/sh

# This is broken shell. I've used this in my local environment, so the output path doesn't locate remote path.
# A goal of this repository is "autoupdating", that means this repository is updated everyday by GitHub action run.

openapi-generator generate \
-i https://api.twitter.com/2/openapi.json \
-g swift5 -o /Desktop/TwitterAPI/ \
--additional-properties=responseAs=AsyncAwait,hashableModels=false

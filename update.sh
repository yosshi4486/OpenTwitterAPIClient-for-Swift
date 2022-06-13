#!/bin/sh
docker compose up

# Moves package files to top level, because it is convenient for their package manager. 
mv ./Client/OpenTwitterAPIClient.podspec ./OpenTwitterAPIClient.podspec

# Update the source path
# -i: in-place replace option
sed -e 's/path: "OpenTwitterAPIClient\/Classes"/path: "Client\/OpenTwitterAPIClient\/Classes"/' ./Client/Package.swift > ./Package.swift

# Remove unused package file
rm ./Client/Package.swift
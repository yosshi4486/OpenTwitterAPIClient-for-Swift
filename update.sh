#!/bin/sh

# Setup docker environment and generates codes
docker compose up

# Moves package files to top level and updates the sources path, because the top location is convenient for their package manager. 
# -i: in-place replace option
sed -e 's/path: "OpenTwitterAPIClient\/Classes"/path: "Sources\/OpenTwitterAPIClient\/Classes"/' ./Sources/Package.swift > ./Package.swift
sed -e "s/s.source_files = 'OpenTwitterAPIClient\/Classes\/\*\*\/\*.swift'/s.source_files = 'Sources\/OpenTwitterAPIClient\/Classes\/\*\*\/\*.swift'/" ./Sources/OpenTwitterAPIClient.podspec > OpenTwitterAPIClient.podspec

# Remove unused package file
rm ./Sources/Package.swift
rm ./Sources/OpenTwitterAPIClient.podspec

# Teardown docker environment
docker compose down --volumes

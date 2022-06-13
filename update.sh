#!/bin/sh

# Setup docker environment and generates codes
docker compose up

# Moves package files to top level and updates the sources path, because the top location is convenient for their package manager. 
# -i: in-place replace option
sed -e 's/path: "OpenTwitterAPIClient\/Classes"/path: "GeneratedSources\/OpenTwitterAPIClient\/Classes"/' ./GeneratedSources/Package.swift > ./Package.swift
sed -e "s/s.source_files = 'OpenTwitterAPIClient\/Classes\/\*\*\/\*.swift'/s.source_files = 'GeneratedSources\/OpenTwitterAPIClient\/Classes\/\*\*\/\*.swift'/" ./GeneratedSources/OpenTwitterAPIClient.podspec > OpenTwitterAPIClient.podspec

# Remove unused package file
rm ./GeneratedSources/Package.swift
rm ./GeneratedSources/OpenTwitterAPIClient.podspec

# Teardown docker environment
docker compose down --volumes
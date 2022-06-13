#!/bin/sh
docker compose up

# Moves package files to top level, because it is convenient for their package manager. 
mv ./Client/Package.swift ./Package.swift
mv ./Client/OpenTwitterAPI.podspec ./OpenTwitterAPI.podspec
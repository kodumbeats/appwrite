#!/bin/bash

# $TRAVIS_BRANCH:
#   - for push builds, or builds not triggered by a pull request, 
#     this is the name of the branch.
#   - for builds triggered by a pull request this is the name
#     of the branch targeted by the pull request.
#   - for builds triggered by a tag, this is the same as the name
#     of the tag (TRAVIS_TAG)

docker buildx build --platform linux/amd64,linux/arm64 -t kodumbeats/appwrite:$TRAVIS_BRANCH -t kodumbeats/appwrite:latest ./ --push 

# front-back-toolkit
[![Build Status](https://travis-ci.org/vinicyusmacedo/front-back-toolkit.svg?branch=master)](https://travis-ci.org/vinicyusmacedo/front-back-toolkit)
[![codecov](https://codecov.io/gh/vinicyusmacedo/front-back-toolkit/branch/master/graph/badge.svg)](https://codecov.io/gh/vinicyusmacedo/front-back-toolkit)

A Django and React Native Toolkit

## Requirements
Node v10.16.1 LTS (Installed from http://npm.github.io/installation-setup-docs/installing/using-the-node-installer.html)

Pipenv (Installed from https://github.com/pypa/pipenv)

Expo-cli (Installed from https://facebook.github.io/react-native/docs/getting-started)

Bumpversion (Installed from https://pypi.org/project/bumpversion/)

## Make it yours

To rename this project, just:

`NAME=my-new-awesome-app make rename`

## Pipenv

### Install dependencies

Dev Dependencies:

`ENV=dev make install-python-deps`

Prod Dependencies:

`make install-python-deps`

## Node

### Install dependencies

Dev Dependencies:

`ENV=dev make install-node-deps`

Prod Dependencies:

`ENV=production make install-node-deps`

## Testing

https://docs.expo.io/versions/latest/guides/testing-with-jest/

### Python test matching

`TEST=some.test make test-backend`

## Making a release

## Building the app

`PLATFORM=android|ios make build-frontend`

## Publishing the app

`make release-frontend`

### Semver

Choose the level (major, minor, patch) and run:

`RELEASE=level make bumpversion`

### TODO
- [ ] Run Codecov only once

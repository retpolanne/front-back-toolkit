# front-back-toolkit
[![Build Status](https://travis-ci.org/vinicyusmacedo/front-back-toolkit.svg?branch=master)](https://travis-ci.org/vinicyusmacedo/front-back-toolkit)
[![codecov](https://codecov.io/gh/vinicyusmacedo/front-back-toolkit/branch/master/graph/badge.svg)](https://codecov.io/gh/vinicyusmacedo/front-back-toolkit)

A Django and React Native Toolkit

## Requirements
Node v10.16.1 LTS (Installed from http://npm.github.io/installation-setup-docs/installing/using-the-node-installer.html)
Pipenv (Installed from https://github.com/pypa/pipenv)
Expo-cli (Installed from https://facebook.github.io/react-native/docs/getting-started)

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

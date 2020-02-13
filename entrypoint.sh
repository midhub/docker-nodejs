#!/usr/bin/env bash

echo "Welcome to nodejs crypto-ready docker build"
echo "System information:"

echo "NODE_PATH:"
echo ${NODE_PATH:-"[EMPTY]"}

echo "Node version:"
node --version

echo "Npm version:"
npm --version

echo "Npm packages installed globally:"
npm list -g --depth 0
#!/bin/bash

unset BUNDLE_PATH
unset BUNDLE_BIN

# your script goes here
bundle install
exec "$@"
#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

#!/bin/bash

unset BUNDLE_PATH
unset BUNDLE_BIN

# Then exec the container's main process (what's set as CMD in the Dockerfile).
bundle install
exec "$@"
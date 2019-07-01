#!/bin/bash

curl -L $1 -o /tmp/robots.txt >/dev/null 2>&1

/workspace/robotstxt/bazel-bin/robots_main /tmp/robots.txt $2 $3

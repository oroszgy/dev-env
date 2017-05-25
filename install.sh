#!/usr/bin/env bash

sh -c "$(curl -L https://raw.githubusercontent.com/oroszgy/dev-env/master/README.md | sed -n '/^```/,/^```/ p' | sed '/^```/ d')"

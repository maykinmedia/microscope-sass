#!/bin/bash
# Generates a full list of settings for all libraries.
cd "$(dirname "$0")"/../lib
egrep ^\\$ _responsive.scss | grep -v '// Not' && echo  # Responsive should go first.
for f in `ls . | grep -v responsive | sort`; do egrep ^\\$ $f | grep -v '// Not' && echo; done

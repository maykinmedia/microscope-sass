#!/bin/bash
# Generates a full list of settings for all libraries.
cd "$(dirname "$0")"/../lib

echo "Cleaning up settings file..."
rm ../_settings-sample.scss
touch ../_settings-sample.scss


echo "Writing settings for _responsive.scss..."
egrep ^\\$ _responsive.scss | grep -v '// Not' >> ../_settings-sample.scss


echo "Writing settings for other libraries..."
for f in `ls . | grep -v responsive | sort`; do egrep ^\\$ $f | grep -v '// Not' && echo; done >> ../_settings-sample.scss


echo "_settings-sample.scss updated."

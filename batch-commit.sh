#!/bin/sh

branch=main

echo "info: fetching upstream content from branch: $branch"
echo

# -L = follow redirects
curl -L -o $branch.zip https://github.com/snehangshuk/shared-docs/archive/$branch.zip

# -o = overwrite, -j = flatten directory structure, -q = quiet
unzip -qjo -d upstream $branch.zip shared-docs-$branch/common-content/*.adoc

rm $branch.zip

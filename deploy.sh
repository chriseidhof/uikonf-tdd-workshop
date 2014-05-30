#!/bin/sh
git checkout gh-pages
git rm -rf .
mv .deploy/* .
git add .
git commit -a -m "Update"
echo "To push, execute 'git push origin gh-pages'"

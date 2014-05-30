#!/bin/bash

CURRENT_COMMIT=`git rev-parse HEAD`
git checkout gh-pages  && 
(
  git pull origin gh-pages
  git rm -rf .
  mv .build/* .
  echo "tdd-workshop.uikonf.com" > CNAME
  git add .
  git commit -a -m "Built from ${CURRENT_COMMIT}"
  echo "To push, execute 'git push origin gh-pages'"
)

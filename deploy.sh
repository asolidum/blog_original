#!/bin/sh

git checkout master
jekyll build
git add -A .
git commit -m "static content update"
git checkout gh-pages
rm -rf *
git checkout master _site && cp -rf _site/ . && rm -rf _site && touch .nojekyll
git add -A .
git commit -m "site content update"
git push origin gh-pages
git checkout master

#!/bin/sh

git checkout master
jekyll
git add -A .
git commit -m "static content update"
git checkout gh-pages
rm -rf *
for file in `git ls-tree master _site -r --name-only`; do
  `git checkout master $file` && cp -r _site/* . && rm -rf _site && touch .nojekyll
done

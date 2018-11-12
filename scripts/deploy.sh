#!/bin/bash -e

REPO="Narno/narno.com"
SOURCE_BRANCH="master"
TARGET_BRANCH="gh-pages"
SITE_DIR="_site"

echo "Started deploy to GitHub Pages"

cp -R $SITE_DIR $HOME/$SITE_DIR
cd $HOME
git config --global user.name "Build Bot"
git config --global user.email "build@narno.com"
git clone --quiet --branch=$TARGET_BRANCH https://${GITHUB_TOKEN}@github.com/${REPO}.git gh-pages > /dev/null
cp -R gh-pages/.git $HOME/.git
rm -rf gh-pages/*
cp -R $HOME/.git gh-pages/.git
cd gh-pages
cp -Rf $HOME/$SITE_DIR/* .
git add -Af .
git commit -m "Build Bot pushed to $TARGET_BRANCH"
git push -fq origin $TARGET_BRANCH > /dev/null

echo "Finished deploy to GitHub Pages"

exit 0

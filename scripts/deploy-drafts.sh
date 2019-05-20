#!/bin/bash -e

USER_NAME="Build Bot"
USER_EMAIL="build@narno.com"
REPOSITORY="Narno/drafts.narno.com"
TARGET_BRANCH="gh-pages"
SITE_DIR="_site"

echo "Started deploy to GitHub Pages"

cp -R $SITE_DIR $HOME/$SITE_DIR
cd $HOME
git config --global user.name "$USER_NAME"
git config --global user.email "$USER_EMAIL"
git clone --quiet --branch=$TARGET_BRANCH https://${GITHUB_TOKEN}@github.com/${REPOSITORY}.git $TARGET_BRANCH > /dev/null
cp -R gh-pages/.git $HOME/.git
rm -rf gh-pages/*
cp -R $HOME/.git gh-pages/.git
cd gh-pages
cp -Rf $HOME/$SITE_DIR/* .
git add -Af .
git commit -m "$USER_NAME pushed to $TARGET_BRANCH"
git push -fq origin $TARGET_BRANCH > /dev/null

echo "Finished deploy to GitHub Pages"

exit 0

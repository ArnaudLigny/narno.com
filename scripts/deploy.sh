#!/bin/bash -e

if [ -z "$DOMAIN" ]; then
  DOMAIN="narno.com"
fi
if [ -z "$USER_NAME" ]; then
  USER_NAME="Build Bot"
fi
if [ -z "$USER_EMAIL" ]; then
  USER_EMAIL="build@$DOMAIN"
fi
if [ -z "$REPOSITORY" ]; then
  REPOSITORY="Narno/narno.com"
fi
if [ -z "$TARGET_BRANCH" ]; then
  TARGET_BRANCH="gh-pages"
fi
if [ -z "$SITE_DIR" ]; then
  SITE_DIR="_site"
fi

echo "Started deploy to $REPOSITORY/$TARGET_BRANCH - https://$DOMAIN"

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
echo "$DOMAIN" > CNAME
if [ -n "$1" ]; then
  if [ "$1" = "drafts" ]; then
    echo "User-agent: *
    Disallow: /" > robots.txt
  fi
fi
git add -Af .
git commit -m "$USER_NAME push updated website"
git push -fq origin $TARGET_BRANCH > /dev/null

echo "Finished deploy"

exit 0

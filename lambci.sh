#!/bin/bash -ex

. ~/init/php 7.1.2
curl -SOL https://phpoole.org/phpoole.phar
php phpoole.phar -v
php phpoole.phar build

. ~/init/ruby 2.3.4
gem install dpl
dpl --provider=pages --github-token=$GITHUB_TOKEN --local-dir=./_site --target-branch=test

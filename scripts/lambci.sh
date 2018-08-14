#!/bin/bash -e

# Init PHP
. ~/init/php 7.1.2

# Download PHPoole
curl -SOL https://phpoole.org/phpoole.phar
php phpoole.phar -v

# Build
php phpoole.phar build -q

# Deploy
bash scripts/deploy.sh

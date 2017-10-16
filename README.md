Source code of https://narno.com, generated with [PHPoole-library](https://github.com/PHPoole/PHPoole-library).

The website is automatically built and deployed through [Travis CI](https://travis-ci.org/Narno/narno.com) when content is modified.

[![Build Status](https://travis-ci.org/Narno/narno.com.svg?branch=master)](https://travis-ci.org/Narno/narno.com)

## Install, build & deploy
```bash
composer install
php build.php -e=prod
export GH_TOKEN=GITHUB_TOKEN
sh deploy.sh
```

## Build and run locally
```bash
php build.php -e=dev
```

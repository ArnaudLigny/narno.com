Source code of http://narno.com, generated with [PHPoole-library](https://github.com/PHPoole/PHPoole-library).

The website is automatically built and deployed through [Travis CI](https://travis-ci.org/Narno/narno.com).

[![Build Status](https://travis-ci.org/Narno/narno.com.svg?branch=master)](https://travis-ci.org/Narno/narno.com)

## Install, build & deploy
```
$ composer install
$ php build.php -e=prod
$ export GH_TOKEN=your_github_token
$ sh deploy.sh
```

## Test locally
```
$ php build.php -e=dev
```

> Source of [narno.com](https://narno.com).

The website is automatically built ([Cecil](https://cecil.app)) and deployed through [LambCI](https://github.com/lambci/lambci) when content is modified.

[![Build Status](https://s3.amazonaws.com/lambci-buildresults-1w0y4nab0105t/gh/Narno/narno.com/branches/master/d968dc9e875fbd4e53e47bde3ace533b.svg)](https://s3.amazonaws.com/lambci-buildresults-1w0y4nab0105t/gh/Narno/narno.com/branches/master/21a79e65d8719f0e3e4f032a47a8c26a.html)

## Install
```bash
git clone https://github.com/Narno/narno.com.git
cd narno.com
curl -SOL https://cecil.app/cecil.phar
```

## Build & serve locally
```bash
php cecil.phar serve
```

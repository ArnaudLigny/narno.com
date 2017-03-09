echo "phpbrew"
source ~/.phpbrew/bashrc
export PHPBREW_SET_PROMPT=1
echo "Switch to PHP 5.6.29"
phpbrew switch 5.6.29
php -v

echo "Run PHPoole build"
php phpoole.phar build

exit 0

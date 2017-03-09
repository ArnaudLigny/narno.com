echo "Switch to PHP 5.6.29"
source ~/.phpbrew/bashrc
phpbrew switch 5.6.29
php -v

echo "Run PHPoole build"
php phpoole.phar build

exit 0

echo "Switch to PHP 5.6.29"
source ~/.phpbrew/bashrc
export PHPBREW_SET_PROMPT=1
phpbrew switch 5.6.29
php -v

echo "Composer install"
composer -V
composer install

echo "Run PHPoole build"
#php phpoole.phar build
php build.php -e=prod

exit 0

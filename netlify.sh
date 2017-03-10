echo "Switch to PHP 5.6.29"
source ~/.phpbrew/bashrc
phpbrew switch 5.6.29

echo "Composer install"
composer install -q

echo "Run PHPoole build"
#php phpoole.phar build
php build.php -e=prod

exit 0

echo "Switching to PHP 5.6.29"
source ~/.phpbrew/bashrc
phpbrew switch 5.6.29

echo "Running Composer"
composer install -q

echo "Running PHPoole"
#php phpoole.phar build
php build.php -e=prod

exit 0

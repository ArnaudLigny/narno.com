echo "Switching to PHP 5.6.30"
echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc
source ~/.phpbrew/bashrc
phpbrew switch 5.6.29

echo "Running Composer"
composer install -q

echo "Running PHPoole"
#php phpoole.phar build
php build.php -e=prod

exit 0

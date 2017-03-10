echo "Switching to PHP 5.6.30"
echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc
source ~/.phpbrew/bashrc
phpbrew switch 5.6.30
#php -v

#echo "Running Composer"
#composer install -q

echo "Running PHPoole"
#php build.php -e=prod
curl -SOL https://phpoole.org/phpoole.phar
php phpoole.phar build

exit 0

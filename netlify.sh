echo "Switching to PHP 5.6.30"
echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc
source ~/.phpbrew/bashrc
phpbrew switch 5.6.30
#php -v

#echo "Running Composer"
#composer install -q

echo "Downloading PHPoole"
curl -sSOL https://phpoole.org/phpoole.phar

echo "Running PHPoole"
#php build.php -e=prod
php phpoole.phar build

exit 0

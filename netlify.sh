echo "phpbrew"
phpbrew init
echo "[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc" >> ~/.bashrc
source ~/.phpbrew/bashrc
phpbrew update
echo "Switch to PHP 5.6.29"
phpbrew switch 5.6.29
php -v

echo "Run PHPoole build"
php phpoole.phar build

exit 0

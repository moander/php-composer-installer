#!/bin/sh
set -ex
function finish {
    rm composer-setup.php || true
}
trap finish EXIT
curl -sSo composer-setup.php https://getcomposer.org/installer
curl -sS https://composer.github.io/installer.sha384sum | sha384sum -c -
php composer-setup.php --quiet --filename=composer --install-dir=/bin



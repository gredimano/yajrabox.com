#!/bin/bash

if [ ! -f composer.json ]; then
    echo "Please make sure to run this script from the root directory of this repo."
    exit 1
fi

git pull
composer install
source "$(dirname "$0")/checkout_latest_docs.sh"

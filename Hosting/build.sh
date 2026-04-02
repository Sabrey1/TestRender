#!/bin/bash
# Install dependencies
composer install --no-dev --optimize-autoloader

# Generate app key if not set
if [ -z "$APP_KEY" ]; then
    php artisan key:generate
fi

# Ensure storage directory is writable
chmod -R 775 storage bootstrap/cache

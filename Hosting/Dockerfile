FROM richarvey/nginx-php-fpm:1.7.2

COPY . .

COPY .env.example .env

RUN composer install --no-dev --optimize-autoloader

RUN chmod -R 775 storage bootstrap/cache

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

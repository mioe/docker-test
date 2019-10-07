# laravel + docker
> A minimal Docker image for development Laravel project

#### Quick start
Clone vanilla `laravel` app or your project:
```bash
git clone git@github.com:laravel/laravel.git
```

Build docker:
```bash
dcb
# docker-compose build
```

Create new user for `mysql-workbench`:
```bash
dce db
# docker-compose exec db
### in mysql container
mysql -u root -p
CREATE USER 'misha'@'%' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON * . * TO 'misha'@'%';
```

Create new `Schema`.


Setup environment variables:
```bash
cd ./laravel
cp .env.example .env

DB_CONNECTION=mysql   # type database
DB_HOST=database      # name container
DB_PORT=3306
DB_DATABASE=laravel   # name table
DB_USERNAME=misha
DB_PASSWORD=123456 
```

Install && initialization `laravel` project:
```bash
dce backend bash
# docker-compose exec backend bash
### in php container
composer install
php artisan key:generate
php artisan migrate
```

Enjoy :3

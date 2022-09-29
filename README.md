# Docker-laravel

## Como rodar o projeto (AUTO):

- Rode o comando para realizar a instalação da aplicação:
```bash
make run
```

<hr>

## Como rodar o projeto (MANUALMENTE):

- Rode o comando para realizar o build dos containers:
```bash
docker-compose up -d --build
```

- Instale o composer:
```bash
docker exec -it sweet-php composer install
```

- Gere a chave:
```bash
docker exec -it sweet-php php artisan key:generate
```

- Execute as migrations:
```bash
docker exec -it sweet-php php artisan migrate
```

- Altere o dono:
```bash
docker-compose exec php chown -R www-data:www-data /var/www/html/storage/
```
<hr>

- Acesse a aplicação na porta do nginx:
```bash
localhost:8099
```

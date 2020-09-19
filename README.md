# dassai
もろもろアップローダ  

## 使うやつ
Laravel + Vue.js

## インストール
```
cp .env.example .env
cp src/.env.example src/.env
docker-compose build
docker-compose up -d
docker-compose exec phpfpm composer install
```

もしくは

```
/dassai配下で
make setup
```

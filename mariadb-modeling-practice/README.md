# Docker Image for MariaDB

## 0. Purpose

> MariaDB to persistence for other practice

## 1. How to use

```shell
docker run --rm -d -v "$(PWD):/docker-entrypoint-initdb.d" \
-p 3306:3306 -e MYSQL_ROOT_PASSWORD=1234 \
-e MYSQL_DATABASE=modeling \
putstack/mariadb-modeling-practice:1.0.0
```

### 1.1. Run with options

#### Expose port

- 3306 : default

#### Initiate schema at runtime

> files in `/docker-entrypoint-initdb.d` directory are scanned and executed to initiate database by entrypoint.sh of public images

#### Official option for my practice

- MYSQL_ROOT_PASSWORD : `1234`
- MYSQL_DATABASE : `modeling` (init.sql`s schema)

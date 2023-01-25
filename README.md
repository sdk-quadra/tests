## tests
test詰め合わせ

### branch: 説明

dockerでwordpress mysqlを引く例


```
$ docker network create sdk
```

wordpress

```
$ docker run --name wordpress000ex12 -dit --net=sdk -p 8085:80 \
-e WORDPRESS_DB_HOST=mysql000ex11 \
-e WORDPRESS_DB_NAME=wordpress000db \
-e WORDPRESS_DB_USER=wordpress000kun \
-e WORDPRESS_DB_PASSWORD=wkunpass wordpress

---

$ docker run --name mysql000ex11 -dit --net=sdk \
-e MYSQL_ROOT_PASSWORD=myrootpass \
-e MYSQL_DATABASE=wordpress000db \
-e MYSQL_USER=wordpress000kun \
-e MYSQL_PASSWORD=wkunpass \
mysql --character-set-server=utf8mb4 \
--collation-server=utf8mb4_unicode_ci \
--default-authentication-plugin=mysql_native_password

```


redmine
```
$ docker run --name redmine000ex14 -dit --network sdk -p 8086:3000 \
-e REDMINE_DB_MYSQL=mysql000ex13 \
-e REDMINE_DB_DATABASE=redmine000db \
-e REDMINE_DB_USERNAME=redmine000kun \
-e REDMINE_DB_PASSWORD=rkunpass redmine

---

$ docker run --name mysql000ex13 -dit --network sdk \
-e MYSQL_ROOT_PASSWORD=myrootpass \
-e MYSQL_DATABASE=redmine000db \
-e MYSQL_USER=redmine000kun \
-e MYSQL_PASSWORD=rkunpass \
mysql --character-set-server=utf8mb4 \
--collation-server=utf8mb4_unicode_ci \
--default-authentication-plugin=mysql_native_password

```

#### 確認
`http://localhost:8085`
`http://localhost:8086`

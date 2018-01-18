#Steps

1.デプロイパッケージをこのファルダーに展開

（前のバージョンがあれば削除してください。）

2.Kubota.drupalのsites/default/settings.php に下記のDB設定入れる。

```
hostname: mysqldb
db: kubotadb
user : root
password : root

```
3.terminalでこのフォルダーへcdし、下記のコマンドでコンテーナーをアップする。

```
docker-compose up --scale web=2 --build -d
```

4.下記のコマーンドでkubota.db.sqlを実行

```
 docker exec -it mysql-cont /initdb.sh
```

###site access
[http://localhost](http://localhost)

###DB access via phpmyadmin
[http://localhost:8080](http://localhost:8080)

###現在のDBのバックアップをDB_DUMPSフォールダーに取る
```
 docker exec -it mysql-cont /dumpdb.sh
```


###Docker conatainer をストップ

```
docker-compose down
```

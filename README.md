実行手順

1.Dockerfile と docker-compose.yml ファイルを準備

2.以下のコマンドで docker コンテナから資材をローカルへ保存

$ mkdir -p ./web/{themes/,modules/,sites/}
$ docker run --rm drupal tar -cC /var/www/html/themes . | tar -xC ./web/themes
$ docker run --rm drupal tar -cC /var/www/html/modules . | tar -xC ./web/modules
$ docker run --rm drupal tar -cC /var/www/html/sites . | tar -xC ./web/sites
$ docker run --rm drupal cat /opt/drupal/composer.json > ./composer.json
$ docker run --rm drupal cat /opt/drupal/composer.lock > ./composer.lock

3.docker を起動
docker-compose up

参考サイト
https://qiita.com/http_kato83/items/74ec5efc279d1f1c20c6
https://hub.docker.com/_/drupal
https://www.pu10g.com/node/38/

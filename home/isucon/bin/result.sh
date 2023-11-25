#!/bin/sh

sudo cat /var/log/mysql/slow.log | /home/isucon/go/bin/go-mysql-query-digest > /result/db.log
sudo cat /var/log/nginx/access.log | /home/isucon/go/bin/kataribe -f /home/isucon/kataribe.toml > /result/web.log
sudo mysqltuner > /result/mysqltuner.log

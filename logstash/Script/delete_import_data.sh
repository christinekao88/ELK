#!/bin/bash
docker-compose stop logstash

curl -XDELETE 'http://192.168.33.10:9200/covid-19' rm -f /usr/share/logstash/data/COVID-19_sincedb

curl -XDELETE 'http://localhost:9200/stock-data' rm -f /usr/share/logstash/data/stock_sincedb


curl -XDELETE 'http://192.168.33.10:9200/mlb_test' rm -f /usr/share/logstash/data/mlb_test_db

curl -XDELETE 'http://localhost:9200/logspout*'


docker-compose start logstash


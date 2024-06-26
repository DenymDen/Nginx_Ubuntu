#!/bin/bash

# 1) Заменить файл default /etc/nginx/sites-enabled на default /Nginx_Ubuntu
sudo cp /Nginx_Ubuntu/default /etc/nginx/sites-available/default 

# 2) перезагрузить nginx
sudo systemctl reload nginx

# 3) Заменить файл filebeat.yml /etc/filebeat на файл filebeat.yml /Nginx_Ubuntu
sudo cp /Nginx_Ubuntu/filebeat.yml /etc/filebeat/filebeat.yml

# 4) Назначить новому файлу /etc/filebeat/filebeat.yml права
sudo chmod go-r /etc/filebeat/filebeat.yml

# 5) перезагрузить filebeat
sudo systemctl restart filebeat

# 6) добавление в автозагрузку filebeat
sudo systemctl enable filebeat
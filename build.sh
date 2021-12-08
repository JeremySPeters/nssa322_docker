#!/bin/bash
#@author: Jeremy Peters
sudo setenforce 0
mkdir ~/.wordpress
mv docker-compose.yml ~/.wordpress
docker-compose up -d ~/.wordpress/

#! /bin/bash

sudo ufw enable
sudo ufw allow 3000/tcp
sudo ufw allow 80/tcp

sudo ufw status
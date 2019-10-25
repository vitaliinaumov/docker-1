#!/bin/bash
# run all ex02

git clone https://github.com/vitaliinaumov/docker_app.git app

docker build -t ft-rails:on-build ft-rails/.

echo "\n\n\n\n\n\n1-st part done!\n\n\n\n\n\n"

docker build -t ex02 .

echo "\n\n\n\n\n\n2-st part done!\n\n\n\n\n\n"

open -a Google\ Chrome http://$(docker-machine ip Char):3000

docker run -it -p 3000:3000 ex02

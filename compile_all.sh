#!/bin/bash

# Escolha uma pasta e execute este script 

root=`pwd`

for cenario in $(find . -maxdepth 1 -type d); do

    if [[ "$cenario" == ".git" ]]; then
        continue
    fi

    if [[ "$cenario" == "." ]] || [[ "$cenario" == ".." ]]; then
        continue
    fi

    echo "PASTA: $cenario"

    cd $cenario

    cd controllers/four_wheels_collision_avoidance

    make WEBOTS_HOME=/usr/local/webots all

    cd $root
done

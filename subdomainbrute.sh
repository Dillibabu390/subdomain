#!/bin/bash

domain=$1
echo -e "\e[34m\e[1m press ctrl+c to exit"
while read subd;do
    if host "$subd.$domain" &> /dev/null; then
            echo "$domain ->\e[0;31m $subd.$domain"
    fi
done < /home/nouserid/Desktop/subdomain.txt

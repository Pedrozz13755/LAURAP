#!/bin/bash

NOCOLOR='\033[0m'
RED='\033[0;31m'
PURPLE='\033[1;35m'
PLTREMTRED='\033[1;34m'

while : 
do
    echo -e "\n${RED}Instalando módulos e dependências..."
    npm init -y
    npm install --no-bin-links
    if [ $? -eq 0 ]; then
        echo "${RED}Instalação concluída com sucesso."
        node index.js
        break
    else
        echo "${PLTREMTRED}Algo deu errado, apagando módulos..."
        rm -rf node_modules
        echo "${PLTREMTRED}Módulos apagados. Tentando novamente..."
        sleep 1
    fi
done
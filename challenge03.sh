#!/bin/bash

# script: Ops301 challenge 03
# purpose: Prompts user for input directory path
# why: create a bash script that alters file permissions of everything in a directory.

# Solicita ao usuário as permissões para chmod
read -p "Digite as permissões para chmod (em octal): " permissao
read -p "Digite o caminho completo do diretório: " diretorio


# Verifica se o diretório existe
if [ ! -d "$diretorio" ]; then
    echo "Diretório não encontrado."
    exit 1
fi

# Aplica as permissões a todos os arquivos no diretório
chmod -R "$permissao" "$diretorio"

echo "Permissões alteradas com sucesso para $permissao em $diretorio."

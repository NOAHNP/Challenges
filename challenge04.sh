#!/bin/bash

<<<<<<< HEAD
#mostra o menu

echo "Hello world menu!!"
echo "1- para fazer ping no IP"
echo "2- para exibir o IPinfo"
echo "3- exit" 

#transforma a entrada do usuário em conteúdo da variável numero
read -p "Escolha uma opção" numero

# condiciona a execução de um comando atravé da variável que contem o numero escolhido pelo usuário.
if [ $numero -eq 1 ]; then
    read -p "Qual o ip?" ip
    ping -c 4 $ip 
fi
if [ $numero -eq 2 ]; then
    ifconfig
fi
if [$numero -eq 3 ]; then 
    exit
fi



=======
numero=0

while [ $numero -ne 3 ]; do
    # mostra o menu
    echo "Hello world menu!!"
    echo "1- para fazer ping no IP"
    echo "2- para exibir o IPinfo"
    echo "3- exit"

    # transforma a entrada do usuário em conteúdo da variável numero
    read -p "Escolha uma opção: " numero

    # condiciona a execução de um comando através da variável que contém o número escolhido pelo usuário.
    if [ $numero -eq 1 ]; then
        read -p "Qual o ip? " ip
        ping -c 4 $ip 
        read -p "0 para voltar ao menu "
    elif [ $numero -eq 2 ]; then
        ifconfig
        read -p "0 para voltar ao menu  "
    elif [ $numero -eq 3 ]; then 
        exit
    else
        echo "Número inválido"
        read -p "0 para voltar ao menu  "
    fi
clear
done
>>>>>>> 55e29748b24ed0b1405c86a5b4aabfc88d191978

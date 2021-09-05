#!/bin/bash

#Programa para criar um sistema simples de criptografia escondendo textos em imagens.

echo
echo "Seja bem-vindo, ecolha uma foto e um arquivo para que o procedimento prossiga..."
sleep 1

#Variaveis
read -p "[Picture]: " PICTURE
read -p "[File]: " INFO
mv $INFO file
INFO=file
sleep 1

#Encryptando o Texto;
gpg -c $INFO
CINFO="${INFO}.gpg"
shred -n 100 -u $INFO
sleep 1

#Escondendo o Texto;
steghide embed -cf $PICTURE -ef $CINFO
shred -n 100 -u $CINFO

echo "Tarefa finalizada com sucesso!!!"

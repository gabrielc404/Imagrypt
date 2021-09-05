#!/bin/bash

echo
echo "Escolha um arquivo para descriptografar..."
sleep 1

read -p "[Picture]: " PICTURE
steghide extract -sf $PICTURE
sleep 0.5

gpg file.gpg
sleep 1
shred -n 100 -u file.gpg

echo "Tarefa finalizada com sucesso!!!"

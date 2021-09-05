#!/bin/bash

#Programa para instalar todos os recursos necessarios...

echo "<< GPG >>"
sudo apt install gpg
echo
echo "<< IMAGEMAGICK >>"
sudo apt install imagemagick

chmod +x ./imagrypt
sudo cp imagrypt /bin/
sudo cp -r ../IMAGRYPT /opt/

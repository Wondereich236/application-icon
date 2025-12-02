#!/bin/bash
shopt -s nullglob

# SatellaOS uygulama simgeleri dizinini oluştur
sudo mkdir -p /usr/share/SatellaOS/application-icon/

# Uygulama simgelerini kopyala
sudo cp ~/git-script/application-icon/*.{jpg,png} /usr/share/SatellaOS/application-icon/

# Dosya izinlerini ayarla
sudo chmod 655 /usr/share/SatellaOS/application-icon/*

# Kullanıcı için satella-picture klasörünü oluştur
mkdir -p ~/satella-picture

# Bu klasöre sembolik link ekle
ln -s /usr/share/SatellaOS/application-icon ~/satella-picture/application-icon 2>/dev/null

echo "✔ Simgeler başarıyla yüklendi!"

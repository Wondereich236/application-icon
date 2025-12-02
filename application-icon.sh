#!/bin/bash
shopt -s nullglob

# SatellaOS arkaplan dizinini oluştur
sudo mkdir -p /usr/share/SatellaOS/application-icon/

# Arkaplan dosyalarını kopyala
sudo cp ~/git-script/application-icon/*.{jpg,png} /usr/share/SatellaOS/application-icon/

# Dosya izinlerini ayarla
sudo chmod 655 /usr/share/SatellaOS/application-icon/*

# Kullanıcı Pictures klasörüne sembolik link oluştur
ln -s /usr/share/SatellaOS/application-icon "$(xdg-user-dir PICTURES)/application-icon" 2>/dev/null

echo "✔ Simgeler başarıyla yüklendi!"

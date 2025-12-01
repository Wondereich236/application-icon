#!/bin/bash

# Kaynak ve hedef klasörler
SRC="$HOME/git-script/application-icon"
DST="/usr/share/SatellaOS/application-icon"

# Kaynak dizin var mı kontrol et
if [ ! -d "$SRC" ]; then
    echo "❌ Kaynak dizin bulunamadı: $SRC"
    exit 1
fi

# Hedef dizin yoksa oluştur
echo "[i] Hedef dizin $DST oluşturuluyor (varsa atlanır)..."
sudo mkdir -p "$DST"

# Tüm dosyaları kopyala
echo "[i] application-icon dosyaları $DST içine kopyalanıyor..."
sudo cp -r "$SRC/"* "$DST/"

echo "[✔] application-icon dosyaları başarıyla $DST içine kopyalandı."

#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:27733677df18b8746a7a8126f31d2da4ddd9784c; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:4640241916c663ca9d63a5c4c235374670d92bd7 EMMC:/dev/block/bootdevice/by-name/recovery 27733677df18b8746a7a8126f31d2da4ddd9784c 67108864 4640241916c663ca9d63a5c4c235374670d92bd7:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

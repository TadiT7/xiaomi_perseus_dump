#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:d5b4f5a69e4af15cb4413f4bad66727d70b67515; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:02db90fda75408b5d5a4e6f060770e97129b4050 EMMC:/dev/block/bootdevice/by-name/recovery d5b4f5a69e4af15cb4413f4bad66727d70b67515 67108864 02db90fda75408b5d5a4e6f060770e97129b4050:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

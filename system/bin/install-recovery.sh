#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:35061070:3bdf20c815c6d87d1687d00a361d41347e2ab636; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:33033546:5bfb1019dfd64ef60692905075b7cecb81168e18 EMMC:/dev/block/bootdevice/by-name/recovery 3bdf20c815c6d87d1687d00a361d41347e2ab636 35061070 5bfb1019dfd64ef60692905075b7cecb81168e18:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

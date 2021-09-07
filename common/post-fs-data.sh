#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}
write /proc/sys/vm/page-cluster 0
write /sys/block/zram0/max_comp_streams 8

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

# Set zram configurations
setprop ro.vendor.qti.config.zram true

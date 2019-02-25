#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}
write /sys/class/kgsl/kgsl-3d0/devfreq/governor msm-adreno-tz
	write /sys/module/cpu_boost/parameters/input_boost_freq 0
	chmod 0664 /sys/module/sync/parameters/fsync_enabled
	write /sys/module/sync/parameters/fsync_enabled N
# This script will be executed in late_start service mode
# More info in the main Magisk thread

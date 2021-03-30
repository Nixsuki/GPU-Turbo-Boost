#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode

write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor performance
write /sys/devices/system/cpu/cpufreq/performance/above_hispeed_delay 0
write /sys/devices/system/cpu/cpufreq/performance/boost 1
write /sys/devices/system/cpu/cpufreq/performance/go_hispeed_load 75
write /sys/devices/system/cpu/cpufreq/performance/max_freq_hysteresis 1
write /sys/devices/system/cpu/cpufreq/performance/align_windows 1
write /sys/module/adreno_idler/parameters/adreno_idler_active 0
write /sys/module/lazyplug/parameters/nr_possible_cores 8
write /sys/module/msm_performance/parameters/touchboost 1
write /dev/cpuset/foreground/boost/cpus 4-7
write /dev/cpuset/foreground/cpus 0-3,4-7
write /dev/cpuset/top-app/cpus 0-7

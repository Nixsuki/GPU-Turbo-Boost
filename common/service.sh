#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode

sync
write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor performance
write /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor performance
write /sys/devices/system/cpu/cpufreq/policy0/scaling_governor performance
write /sys/devices/system/cpu/cpufreq/policy4/scaling_governor performance
write /sys/class/kgsl/kgsl-3d0/devfreq/governor performance
write /sys/module/lazyplug/parameters/nr_possible_cores 8
write /dev/cpuset/foreground/boost/cpus 4-7
write /dev/cpuset/foreground/cpus 0-3,4-7
write /dev/cpuset/top-app/cpus 0-7
write /sys/class/kgsl/kgsl-3d0/idle_timer 120
write /sys/class/kgsl/kgsl-3d0/bus_split 0
write /sys/class/kgsl/kgsl-3d0/throttling 0
write /sys/class/kgsl/kgsl-3d0/force_clk_on 1
write /sys/class/kgsl/kgsl-3d0/force_bus_on 1
write /sys/class/kgsl/kgsl-3d0/force_rail_on 1
write /sys/class/kgsl/kgsl-3d0/force_no_nap 1
write /sys/kernel/debug/kgsl/kgsl-3d0/log_level_drv
write /sys/kernel/debug/kgsl/kgsl-3d0/log_level_ctxt
write /sys/kernel/debug/kgsl/kgsl-3d0/log_level_cmd
write /sys/kernel/debug/kgsl/kgsl-3d0/log_level_pwr
write /sys/kernel/debug/kgsl/kgsl-3d0/log_level_mem

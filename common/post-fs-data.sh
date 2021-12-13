#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}
write /proc/sys/vm/page-cluster 0
write /sys/block/zram0/max_comp_streams 4

# Set GPU Turbo Boost configurations
setprop debug.composition.type c2d
setprop debug.composition.type gpu
setprop debug.enabletr true
setprop debug.overlayui.enable 1
setprop debug.performance.tuning 1
setprop hw3d.force 1
setprop hwui.disable_vsync true
setprop hwui.render_dirty_regions false
setprop persist.sys.composition.type c2d
setprop persist.sys.composition.type gpu
setprop persist.sys.ui.hw 1
setprop ro.config.enable.hw_accel true
setprop ro.product.gpu.driver 1
setprop ro.fb.mode 1
setprop ro.sf.compbypass.enable 0
setprop video.accelerate.hw 1
setprop debug.egl.hw 0
setprop debug.gralloc.gfx_ubwc_disable 0
setprop debug.mdpcomp.logs 0
setprop persist.vendor.color.matrix 2
setprop vendor.gralloc.disable_ubwc 0
setprop ro.vendor.qti.sys.fw.bg_apps_limit 120
setprop ro.vendor.qti.sys.fw.bservice_enable true
setprop ro.vendor.qti.core.ctl_max_cpu 4
setprop ro.vendor.qti.core.ctl_min_cpu 2

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread

# GPU Turbo Boost
## Description
The GPU Turbo tweak claims to increase the phone’s GPU power by up to 75% but at the same time reduces power consumption by up to 25%

## What it does
This module uses the tool "resetprop" to modify the default values found in build.prop to:

	debug.composition.type=gpu
	debug.composition.type=c2d
	debug.egl.hw=1
	debug.egl.profiler=1
	debug.enabletr=true
	debug.overlayui.enable=1
	debug.performance.tuning=1
	debug.sf.hw=1
	dev.pm.dyn_samplingrate=1
	hw3d.force=1
	hwui.disable_vsync=true
	hwui.render_dirty_regions=false
	persist.sys.composition.type=c2d
	persist.sys.composition.type=gpu
	persist.sys.ui.hw=1
	ro.config.enable.hw_accel=true
	ro.product.gpu.driver=1
	ro.fb.mode=1
	ro.vold.umsdirtyratio=50
	ro.sf.compbypass.enable=0
	video.accelerate.hw=1

## Requirements
* Magisk v15.0 or higher

## Changelog 
* v1.0 - Initial Releaase
* v2.0 - Various fixes
       - Removed unused codes.
       - Added GPU specific fuctionalities.
       - Fixed Black Screen and Game Graphic glitches.

## Links
* <a href="https://forum.xda-developers.com/apps/magisk/module-gpu-turbo-boost-t3808541">XDA GPU Turbo Boost Link</a>
* <a href="http://www.tiny.cc/latestmagisk">Latest stable Magisk</a>

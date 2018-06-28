# GPU Turbo Boost
## Description
The GPU Turbo tweak claims to increase the phone’s GPU power by up to 75% but at the same time reduces power consumption by up to 25%

## What it does
This module uses the tool "resetprop" to modify the default values found in build.prop to:

	dalvik.vm.dexopt-flags=m=y
	debug.sf.hw=1
	debug.composition.type=c2d
	debug.composition.type=gpu
	debug.egl.profiler=1
	debug.egl.hw=1
	debug.enabletr=true
	debug.overlayui.enable=1
	debug.performance.tuning=1
	debug.qc.hardware=true
	debug.qctwa.statusbar=1
	debug.qctwa.preservebuf=1
	debug.sf.hw=1
	dev.pm.dyn_samplingrate=1
	hw3d.force=1
	hwui.render_dirty_regions=false
	hwui.disable_vsync=true
	persist.sampling_profiler=0
	persist.service.pcsync.enable=0
	persist.service.lgospd.enable=0
	persist.sys.composition.type=c2d
	persist.sys.composition.type=gpu
	persist.sys.purgeable_assets=1
	persist.sys.ui.hw=1
	persist.sys.use_16bpp_alpha=1
	persist.sys.NV_FPSLIMIT=60
	persist.sys.NV_POWERMODE=1
	persist.sys.NV_PROFVER=15
	persist.sys.NV_STEREOCTRL=0
	persist.sys.NV_STEREOSEPCHG=0
	persist.sys.NV_STEREOSEP=20
	ro.config.disable.hw_accel=false
	ro.fb.mode=1
	ro.product.gpu.driver=1
	ro.sf.compbypass.enable=0
	ro.vold.umsdirtyratio=20
	video.accelerate.hw=1

## Requirements
* Magisk v15.0 or higher

## Changelog 
* Initial Release v1.0

## Links
* 

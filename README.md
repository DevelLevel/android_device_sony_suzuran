Copyright (C) 2016 - The CyanogenMod Project

Copyright (C) 2017 - The LineageOS Project

Device configuration for Sony Xperia Z5 Compact
=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad-core 2.0 GHz ARM® Cortex™ A57 and quad-core 1.5 GHz ARM® Cortex™ A53
CHIPSET | Qualcomm MSM8994 Snapdragon 810
GPU     | Adreno 430
Memory  | 2 GB
Shipped Android Version | 5.1.1
Storage | 32 GB
MicroSD | Up to 256 GB
Battery | 2700 mAh (non-removable)
Dimensions | 127 x 65 x 8.9 mm
Display | 720 x 1280 pixels, 4.6" IPS LCD
Rear Camera  | 23 MP, LED flash
Front Camera | 5.1 MP
Release Date | October 2015

![Sony Xperia Z5 Compact](http://cdn2.gsmarena.com/vv/pics/sony/sony-z5-compact1.jpg "Sony Xperia Z5 Compact")
-

To build TWRP
=============

Clone twrp minimal sources:
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1


Revert this commit:
https://github.com/TeamWin/android_bootable_recovery/commit/a2bd7b7758a4585814f642d55301043276d8a002


Copy android-base/ to base/:
cd system/core/base/include/
cp android-base/ base


Clone this repository to device/sony/suzuran
git clone https://github.com/DevelLevel/android_device_sony_suzuran-AEX.git -b twrp device/sony/suzuran


Start the build!
. build/envsetup.sh
lunch omni_suzuran-userdebug
make recoveryimage

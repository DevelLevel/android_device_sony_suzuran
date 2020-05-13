#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/sony/suzuran

# Platform
TARGET_BOARD_PLATFORM := msm8994
TARGET_BOARD_PLATFORM_GPU := qcom-adreno430
TARGET_BOOTLOADER_BOARD_NAME := suzuran
TARGET_NO_BOOTLOADER := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5513412608
# Reserve space for data encryption (24763170816-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24763154432
# New
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXCLUDE_SUPERSU := true

# Partitions types
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

TARGET_USES_64_BIT_BINDER := true
TARGET_USES_64_BIT_BCMDHD := true

ENABLE_CPUSETS := true

# Use Snapdragon LLVM, if available
TARGET_USE_SDCLANG := true

# Properties
TARGET_SYSTEM_PROP += $(LOCAL_PATH)/conf/system.prop

# Boot image/kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 boot_cpus=0-5 dwc3_msm.hvdcp_max_current=1500 dwc3_msm.prop_chg_detect=Y coherent_pool=2M androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x02000000
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_VERSION := 3.10
TARGET_PREBUILT_KERNEL := device/sony/suzuran/kernel
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
TARGET_NO_RECOVERY := false
TARGET_NO_KERNEL := false

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Power
TARGET_POWERHAL_VARIANT := qcom

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.qcom

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# init
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/bin/init.qcom.power.sh:system/bin/init.qcom.power.sh \
    $(LOCAL_PATH)/rootdir/fstab.qcom:root/fstab.qcom \
    $(LOCAL_PATH)/rootdir/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/rootdir/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/rootdir/ueventd.qcom.rc:root/ueventd.qcom.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/conf/thermal-engine.conf:system/etc/thermal-engine.conf

# TWRP
TW_THEME := portrait_hdpi
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_EXTRA_LANGUAGES := true

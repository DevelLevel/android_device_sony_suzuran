#
# This is for TWRP Recovery
#

# Path
LOCAL_PATH := device/sony/suzuran
TWRP_OUT := recovery/root

# Copy kernel
PRODUCT_COPY_FILES += device/sony/suzuran/kernel/Image.gz-dtb:kernel

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/twrp.fstab

# TWRP
TW_MAX_BRIGHTNESS := 255
TW_EXCLUDE_SUPERSU := true
TW_EXTRA_LANGUAGES := true
TW_THEME := portrait_hdpi
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone25/temp"
TWHAVE_SELINUX := true
TARGET_RECOVERY_QCOM_RTC_FIX := true

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:$(TWRP_OUT)/system/usr/share/zoneinfo/tzdata

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/twrp.fstab:$(TWRP_OUT)/etc/twrp.fstab

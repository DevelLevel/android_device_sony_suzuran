#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/sony/suzuran/full_suzuran.mk)

# Inherit some common CM stuff
$(call inherit-product, vendor/aosp/config/common.mk)

PRODUCT_NAME := aosp_suzuran

# Use the latest approved GMS identifiers

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=suzuran
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="suzuran-user 8.1.0 OPM7-181205-001 1 test-keys"
BUILD_FINGERPRINT := Sony/E5823/E5823:7.1.1/32.4.A.1.54/3761073091:user/release-keys

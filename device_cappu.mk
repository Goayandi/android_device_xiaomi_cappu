#
# Copyright (C) 2015-2016 The CyanogenMod Project
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

# Screen density
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Manifest
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/manifest.xml:system/vendor/manifest.xml

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Device product elements
include $(LOCAL_PATH)/product/*.mk

# Dalvik heap configurations
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)

# Product common configurations
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Vendor product configurations
$(call inherit-product-if-exists, vendor/xiaomi/cappu/cappu-vendor.mk)

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.secure=0 \
	ro.allow.mock.location=0 \
	ro.debuggable=1 \
	ro.adb.secure=0 \
	ro.zygote=zygote64_32 \
	ro.dalvik.vm.native.bridge=0 \
	persist.sys.usb.config=mtp \
	persist.debug.xlog.enable=0 \
	camera.disable_zsl_mode=1

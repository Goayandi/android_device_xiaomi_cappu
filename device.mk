#
# Copyright (C) 2018 The LineageOS Project
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
DEVICE_PATH := device/xiaomi/cappu

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Assert
TARGET_OTA_ASSERT_DEVICE := cappu,MIPAD3,mipad3

# Device specific overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay

# Screen Density
PRODUCT_AAPT_CONFIG := normal xlarge large
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Characteristics (for tablet)
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_PROPERTY_OVERRIDES := ro.carrier=wifi-only

# Dalvik/HWUI
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Testing different configurations for Mi Pad 3
#$(call inherit-product, frameworks/native/build/phone-xxxhdpi-4096-dalvik-heap.mk)
#$(call inherit-product, frameworks/native/build/phone-xxxhdpi-4096-hwui-memory.mk)
#$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := cappu

# TARGET_SKIP_OTA_PACKAGE := true

PRODUCT_PACKAGES += \
   libmtk_symbols \
   libstlport

# Lights
PRODUCT_PACKAGES += \
    lights.mt8173

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_device.xml:system/etc/audio_device.xml \
    $(DEVICE_PATH)/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml

# Media
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(DEVICE_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/ft5x46.kl:system/usr/keylayout/ft5x46.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(DEVICE_PATH)/rootdir/factory_init.connectivity.rc:root/factory_init.connectivity.rc \
    $(DEVICE_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
    $(DEVICE_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
    $(DEVICE_PATH)/rootdir/fstab.mt8173:root/fstab.mt8173 \
    $(DEVICE_PATH)/rootdir/init.aee.rc:root/init.aee.rc \
    $(DEVICE_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \
    $(DEVICE_PATH)/rootdir/init.fon.rc:root/init.fon.rc \
    $(DEVICE_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(DEVICE_PATH)/rootdir/init.mt8173.rc:root/init.mt8173.rc \
    $(DEVICE_PATH)/rootdir/init.mt8173.usb.rc:root/init.mt8173.usb.rc \
    $(DEVICE_PATH)/rootdir/meta_init.connectivity.rc:root/meta_init.connectivity.rc \
    $(DEVICE_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    $(DEVICE_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    $(DEVICE_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
    $(DEVICE_PATH)/rootdir/multi_init.rc:root/multi_init.rc \
    $(DEVICE_PATH)/rootdir/ueventd.mt8173.rc:root/ueventd.mt8173.rc
	
# TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Var patch
ifneq ($(TARGET_BUILD_VARIANT),user,userdebug,eng)
  ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
  ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
endif

# Thermal
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/thermal/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    $(DEVICE_PATH)/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    $(DEVICE_PATH)/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(DEVICE_PATH)/configs/thermal/.thermal_policy_00:system/etc/.tp/.thermal_policy_00

# Common stuff
$(call inherit-product, device/mediatek/mt8173-common/mt8173.mk)

# Vendor
$(call inherit-product, vendor/xiaomi/cappu/cappu-vendor.mk)

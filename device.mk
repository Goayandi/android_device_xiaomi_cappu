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
PRODUCT_AAPT_CONFIG := xlarge large
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US

# Characteristics (for tablet)
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_PROPERTY_OVERRIDES := ro.carrier=wifi-only

# Dalvik/HWUI
#$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
#$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Testing different configurations for Mi Pad 3
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
#$(call inherit-product, frameworks/native/build/phone-xxxhdpi-4096-dalvik-heap.mk)
#$(call inherit-product, frameworks/native/build/phone-xxxhdpi-4096-hwui-memory.mk)
#$(call inherit-product, frameworks/native/build/tablet-7in-xhdpi-2048-dalvik-heap.mk)
#$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

PRODUCT_TAGS += dalvik.gc.type-precise

# Recovery allowed devices
TARGET_OTA_ASSERT_DEVICE := cappu

# TARGET_SKIP_OTA_PACKAGE := true

PRODUCT_PACKAGES += \
   mtk_symbols \
	 libion

# Lights
PRODUCT_PACKAGES += \
    lights.mt8173

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/audio_device.xml:system/etc/audio_device.xml \
    $(DEVICE_PATH)/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(DEVICE_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Bluetooth
PRODUCT_PACKAGES += \
		android.hardware.bluetooth@1.0-impl \
		android.hardware.bluetooth@1.0-service

# Camera HAL
PRODUCT_PACKAGES += \
		camera.device@1.0-impl \
		camera.device@3.2-impl \
		android.hardware.camera.provider@2.4-impl \
		android.hardware.camera.provider@2.4-service

# FM Radio
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl \
    FMRadio \
    libfmjni

# Keymaster HAL
PRODUCT_PACKAGES += \
		android.hardware.keymaster@3.0-impl

# Sensors HAL
PRODUCT_PACKAGES += \
		android.hardware.light@2.0-impl \
		android.hardware.light@2.0-service \
		android.hardware.sensors@1.0-impl \
		android.hardware.sensors@1.0-service \
		lights.mt8173

# USB HAL
PRODUCT_PACKAGES += \
		android.hardware.usb@1.0-service

# Health HAL
PRODUCT_PACKAGES += \
		android.hardware.health@1.0-impl \
		android.hardware.health@1.0-service

# Power HAL
PRODUCT_PACKAGES += \
		    android.hardware.power@1.0-impl

# Graphic HAL
PRODUCT_PACKAGES += \
		android.hardware.graphics.allocator@2.0-impl \
		android.hardware.graphics.allocator@2.0-service \
		android.hardware.graphics.composer@2.1-impl \
		android.hardware.graphics.mapper@2.0-impl \
		android.hardware.memtrack@1.0-impl \
		libgralloc_extra \
		libgui_ext \
		libui_ext

# Seccomp policy
PRODUCT_COPY_FILES += \
		device/xiaomi/cappu/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
		device/xiaomi/cappu/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Media
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(DEVICE_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/ft5x46.kl:system/usr/keylayout/ft5x46.kl

# HIDL
PRODUCT_COPY_FILES += \
		    device/xiaomi/cappu/hidl/manifest.xml:system/vendor/manifest.xml

# Ramdisk
PRODUCT_COPY_FILES += \
		$(DEVICE_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(DEVICE_PATH)/rootdir/fstab.mt8173:root/fstab.mt8173 \
    $(DEVICE_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \
    $(DEVICE_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(DEVICE_PATH)/rootdir/init.mt8173.rc:root/init.mt8173.rc \
    $(DEVICE_PATH)/rootdir/init.mt8173.usb.rc:root/init.mt8173.usb.rc \
		$(DEVICE_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(DEVICE_PATH)/rootdir/ueventd.mt8173.rc:root/ueventd.mt8173.rc

# TWRP
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Var patch
#ifneq ($(TARGET_BUILD_VARIANT),user,userdebug,eng)
#  ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
#  ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
#endif

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

# Keyhandler package
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

PRODUCT_SYSTEM_SERVER_JARS += com.cyanogenmod.keyhandler

# Media
PRODUCT_PROPERTY_OVERRIDES += \
		media.stagefright.legacyencoder=0

# Disable adb security
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
		ro.mount.fs=EXT4 \
		ro.allow.mock.location=0 \
		ro.debuggable=1 \
		ro.config.low_ram=false

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
		sys.io.scheduler=cfq

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
		ro.hw.gyroscope=false \
		persist.sys.media.use-awesome=false \
		media.stagefright.use-awesome=false

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
		persist.sys.usb.config=mtp

# Disable adb security
#PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
#			ro.mount.fs=EXT4 \
#			ro.adb.secure=0 \
#			ro.secure=0 \
#			ro.allow.mock.location=0 \
#			ro.debuggable=1 \
#			persist.service.acm.enable=0 \
#			ro.config.low_ram=false

#ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0
#ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
#ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1

# Never dexopt the keyhandler
$(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)

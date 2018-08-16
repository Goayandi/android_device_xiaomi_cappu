LOCAL_PATH := device/xiaomi/cappu

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal xlarge large
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_CHARACTERISTICS := tablet

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
    $(LOCAL_PATH)/configs/audio/audio_device.xml:system/etc/audio_device.xml \
    $(LOCAL_PATH)/configs/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml

# Media
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
	$(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    $(LOCAL_PATH)/configs/ft5x46.kl:system/usr/keylayout/ft5x46.kl

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/enableswap.sh:root/enableswap.sh \
    $(LOCAL_PATH)/rootdir/factory_init.project.rc:root/factory_init.project.rc \
    $(LOCAL_PATH)/rootdir/factory_init.rc:root/factory_init.rc \
    $(LOCAL_PATH)/rootdir/fstab.mt8173:root/fstab.mt8173 \
    $(LOCAL_PATH)/rootdir/init.aee.rc:root/init.aee.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/init.mt8173.rc:root/init.mt8173.rc \
    $(LOCAL_PATH)/rootdir/init.mt8173.usb.rc:root/init.mt8173.usb.rc \
    $(LOCAL_PATH)/rootdir/init.usb.rc:root/init.usb.rc \
    $(LOCAL_PATH)/rootdir/meta_init.modem.rc:root/meta_init.modem.rc \
    $(LOCAL_PATH)/rootdir/meta_init.project.rc:root/meta_init.project.rc \
    $(LOCAL_PATH)/rootdir/meta_init.rc:root/meta_init.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt8173.rc:root/ueventd.mt8173.rc

#some rc files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init/atrace.rc:system/etc/init/atrace.rc \
    $(LOCAL_PATH)/init/audioserver.rc:system/etc/init/audioserver.rc \
    $(LOCAL_PATH)/init/bootanim.rc:system/etc/init/bootanim.rc \
    $(LOCAL_PATH)/init/bootstat.rc:system/etc/init/bootstat.rc \
    $(LOCAL_PATH)/init/cameraserver.rc:system/etc/init/cameraserver.rc \
    $(LOCAL_PATH)/init/debuggerd.rc:system/etc/init/debuggerd.rc \
    $(LOCAL_PATH)/init/debuggerd64.rc:system/etc/init/debuggerd64.rc \
    $(LOCAL_PATH)/init/drmserver.rc:system/etc/init/drmserver.rc \
    $(LOCAL_PATH)/init/dumpstate.rc:system/etc/init/dumpstate.rc \
    $(LOCAL_PATH)/init/gatekeeperd.rc:system/etc/init/gatekeeperd.rc \
    $(LOCAL_PATH)/init/installd.rc:system/etc/init/installd.rc \
    $(LOCAL_PATH)/init/keystore.rc:system/etc/init/keystore.rc \
    $(LOCAL_PATH)/init/lmkd.rc:system/etc/init/lmkd.rc \
    $(LOCAL_PATH)/init/logd.rc:system/etc/init/logd.rc \
    $(LOCAL_PATH)/init/mdnsd.rc:system/etc/init/mdnsd.rc \
    $(LOCAL_PATH)/init/mediacodec.rc:system/etc/init/mediacodec.rc \
    $(LOCAL_PATH)/init/mediadrmserver.rc:system/etc/init/mediadrmserver.rc \
    $(LOCAL_PATH)/init/mediaextractor.rc:system/etc/init/mediaextractor.rc \
    $(LOCAL_PATH)/init/mediaserver.rc:system/etc/init/mediaserver.rc \
    $(LOCAL_PATH)/init/mtpd.rc:system/etc/init/mtpd.rc \
    $(LOCAL_PATH)/init/netd.rc:system/etc/init/netd.rc \
    $(LOCAL_PATH)/init/racoon.rc:system/etc/init/racoon.rc \
    $(LOCAL_PATH)/init/servicemanager.rc:system/etc/init/servicemanager.rc \
    $(LOCAL_PATH)/init/surfaceflinger.rc:system/etc/init/surfaceflinger.rc \
    $(LOCAL_PATH)/init/uncrypt.rc:system/etc/init/uncrypt.rc \
    $(LOCAL_PATH)/init/vdc.rc:system/etc/init/vdc.rc \
    $(LOCAL_PATH)/init/vold.rc:system/etc/init/vold.rc
	
# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/etc/twrp.fstab:recovery/root/etc/twrp.fstab

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal/.ht120.mtc:system/etc/.tp/.ht120.mtc \
    $(LOCAL_PATH)/configs/thermal/thermal.conf:system/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/configs/thermal/thermal.off.conf:system/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/configs/thermal/.thermal_policy_00:system/etc/.tp/.thermal_policy_00

# Common stuff
$(call inherit-product, device/mediatek/mt8173-common/mt8173.mk)

# Vendor
$(call inherit-product, vendor/xiaomi/cappu/cappu-vendor.mk)

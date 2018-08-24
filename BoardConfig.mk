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
include device/mediatek/mt8173-common/BoardConfigCommon.mk

#TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Platform
TARGET_BOARD_PLATFORM := mt8173
TARGET_BOOTLOADER_BOARD_NAME := mt8173
TARGET_NO_BOOTLOADER := true
TARGET_NO_FACTORYIMAGE := true

# CPU
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

TARGET_CPU_CORTEX_A53 := true
ARCH_ARM_HAVE_TLS_REGISTER := true

USE_CAMERA_STUB := true
TARGET_PROVIDES_INIT_RC := true

# MTK Hardware
MTK_INTERNAL_CDEFS := $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),$(foreach v,$(shell echo $($(t)) | tr '[a-z]' '[A-Z]'),-D$(v))))
MTK_INTERNAL_CDEFS += $(foreach t,$(AUTO_ADD_GLOBAL_DEFINE_BY_NAME_VALUE),$(if $(filter-out no NO none NONE false FALSE,$($(t))),-D$(t)=\"$($(t))\"))

MTK_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)

#COMMON_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
#COMMON_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)

# Mediatek support
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_HAS_MTK_HARDWARE := true
TARGET_KMODULES := true
BOARD_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
BOARD_GLOBAL_CFLAGS += -DDISABLE_ASHMEM_TRACKING
BOARD_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT
BOARD_DISABLE_HW_ID_MATCH_CHECK := true;

# Display, GPU & EGL
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

USE_OPENGL_RENDERER := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1

# Boot animation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# LightHAL
TARGET_PROVIDES_LIBLIGHT := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
#BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

TARGET_USES_MKE2FS := true # Use MKE2FS for creating ext4 images

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6442450944
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb/gadget//lun0/file

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/xiaomi/cappu
TARGET_KERNEL_CONFIG := cappu_defconfig
TARGET_USES_64_BIT_BINDER := true
TARGET_IS_64_BIT := true
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x08f88000
BOARD_SECOND_OFFSET := 0x00f00000
BOARD_TAGS_OFFSET := 0x0df88000
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --base $(BOARD_KERNEL_BASE) --pagesize $(BOARD_KERNEL_PAGESIZE) --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)

TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
MTK_APPENDED_DTB_SUPPORT := yes


# System properties
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

TARGET_RECOVERY_FSTAB := device/xiaomi/cappu/rootdir/fstab.mt8173

# Recovery
#RECOVERY_VARIANT := twrp

# TWRP
ifeq ($(RECOVERY_VARIANT), twrp)

# TWRP-Specific
BOARD_SUPPRESS_SECURE_ERASE := true
TW_THEME := portrait_hdpi
DEVICE_RESOLUTION := 1536x2048
DEVICE_SCREEN_WIDTH := 1536
DEVICE_SCREEN_HEIGHT := 2048
# RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := ABGR_8888
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_INCREASES_COLDBOOT_TIMEOUT := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT :="sdcard"
RECOVERY_SDCARD_ON_DATA := true
#TW_INCLUDE_CRYPTO := true
#TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 128
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/soc/11270000.usb/gadget//lun0/file
TW_EXCLUDE_SUPERSU := true
TW_DEFAULT_LANGUAGE := en
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
# Very important for this device
TW_IGNORE_MISC_WIPE_DATA := true
TW_EXCLUDE_ENCRYPTED_BACKUPS := false
TW_NO_EXFAT := false

# Screenshots
TW_INCLUDE_FB2PNG := true

# MTP
# TW_EXCLUDE_MTP := true
TW_MTP_DEVICE := "/dev/mtp_usb"

# USB Storage
TW_NO_USB_STORAGE := false

# Logs
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Neon
ARCH_ARM_HAVE_NEON := true

# Exclude APP
TW_EXCLUDE_TWRPAPP := true

# Backup data/media
TW_BACKUP_DATA_MEDIA := true

endif

# SELinux
BOARD_SEPOLICY_DIRS := \
    $(DEVICE_PATH)/sepolicy

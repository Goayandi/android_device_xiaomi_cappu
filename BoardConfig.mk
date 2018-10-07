#
# Copyright (C) 2016 The CyanogenMod Project
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

# Device path
LOCAL_PATH := device/xiaomi/cappu

# Device board elements
include $(LOCAL_PATH)/board/*.mk

# Device vendor board
-include vendor/xiaomi/cappu/BoardConfigVendor.mk

#######################################################################

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# EGL
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
USE_OPENGL_RENDERER := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

BOARD_USE_SOFT_GATEKEEPER := true
SUPPRESS_MTK_AUDIO_BLOB_ERR_MSG := true
BOARD_PROVIDES_LIBRIL := true

# System.prop
TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop

# Block based ota
# see http://review.cyanogenmod.org/#/c/78849/1/core/Makefile
BLOCK_BASED_OTA := false

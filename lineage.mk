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
# Inherit device configuration for mocha.
$(call inherit-product, device/xiaomi/cappu/device.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
#$(call inherit-product, vendor/lineage/config/common_mini_tablet_wifionly.mk)
#$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
#$(call inherit-product, vendor/cm/config/common_full.mk)

# Release name
PRODUCT_RELEASE_NAME := MIPAD3

PRODUCT_DEVICE := cappu
PRODUCT_NAME := lineage_cappu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi Pad 3
BOARD_MANUFACTURER := Xiaomi

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Xiaomi/cappu/cappu:7.0/NRD90M/8.4.26:user/release-keys" \
    PRIVATE_BUILD_DESC="Xiaomi/cappu/cappu:7.0/NRD90M/8.4.26:user/release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Available languages
PRODUCT_LOCALES := en_US en_GB de_DE ru_RU uk_UA tr_TR sk_SK vi_VN fr_FR ar_EG

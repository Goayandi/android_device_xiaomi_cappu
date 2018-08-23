$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/cappu/device.mk)

# Release name
PRODUCT_RELEASE_NAME := Mi Pad 3

PRODUCT_DEVICE := cappu
PRODUCT_NAME := lineage_cappu
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := cappu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_RESTRICT_VENDOR_FILES := false

# Boot animation
TARGET_SCREEN_HEIGHT      := 2048
TARGET_SCREEN_WIDTH       := 1536
TARGET_BOOTANIMATION_NAME := 1536

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION   := US

# Inherit device configuration for mocha.
$(call inherit-product, device/xiaomi/cappu/full_cappu.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_tablet_wifionly.mk)
#$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
#$(call inherit-product, vendor/cm/config/common_full.mk)

PRODUCT_NAME := lineage_cappu
PRODUCT_DEVICE := cappu
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

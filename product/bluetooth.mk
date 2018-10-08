# Folder path
DEVICE_PATH := device/xiaomi/cappu

PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/bluetooth/auto_pair_blacklist.conf:system/vendor/etc/bluetooth/auto_pair_blacklist.conf \
	$(DEVICE_PATH)/configs/bluetooth/auto_pair_devlist.conf:system/vendor/etc/bluetooth/auto_pair_devlist.conf \
	$(DEVICE_PATH)/configs/bluetooth/btconfig.xml:system/vendor/etc/bluetooth/btconfig.xml \
	$(DEVICE_PATH)/configs/bluetooth/bt_did.conf:system/vendor/etc/bluetooth/bt_did.conf \
	$(DEVICE_PATH)/configs/bluetooth/bt_stack.conf:system/vendor/etc/bluetooth/bt_stack.conf \
	$(DEVICE_PATH)/configs/bluetooth/bt_stack.conf.debug:system/vendor/etc/bluetooth/bt_stack.conf.debug \
	$(DEVICE_PATH)/configs/bluetooth/bt_stack.conf.sqc:system/vendor/etc/bluetooth/bt_stack.conf.sqc

PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
	libbluetooth_mtk \
    libbt-vendor


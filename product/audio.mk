# Configurations
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_device.xml:system/vendor/etc/audio_device.xml \
	$(LOCAL_PATH)/configs/audio/audio_policy.conf:system/vendor/etc/audio_policy.conf \
	$(LOCAL_PATH)/configs/audio/audio_em.xml:system/vendor/etc/audio_em.xml \
	$(LOCAL_PATH)/configs/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio/a2dp_audio_policy_configuration.xml:/system/vendor/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/audio/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/audio/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/audio/usb_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/audio/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/vendor/etc/audio/audio_policy_volumes.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# Packages
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio_policy.default \
    libaudiopolicymanagerdefault \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml \
	audio_policy.stub \
    libfs_mgr

# Audio HAL
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio@2.0-service

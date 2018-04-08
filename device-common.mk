LOCAL_PATH := device/samsung/gts2-common

PRODUCT_CHARACTERISTICS := tablet

# ANT+
#PRODUCT_PACKAGES += \
#    AntHalService \
#    com.dsi.ant.antradio_library \
#    libantradio

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf
	
# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.universal5433 \
    libtinycompress \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl
	
# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    libbt-vendor
	
# Camera
PRODUCT_PACKAGES += \
    camera.universal5433 \
    camera.device@3.2-impl \
    camera.device@1.0-impl \
    android.hardware.camera.provider@2.4-impl
	
# Charger
PRODUCT_PACKAGES += \
    charger_res_images \
    cm_charger_res_images	

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl
	
# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd \
	fingerprint.exynos5 \
	libbauthtzcommon_shim
	
# Flat device tree for boot image
PRODUCT_PACKAGES += \
    dtbhtoolExynos

# Gps
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl
	
# Graphics
PRODUCT_AAPT_CONFIG := xlarge
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xhdpi hdpi mdpi	

PRODUCT_PACKAGES += \
    libion \
    libfimg \
    libhwc2on1adapter \
	libget_process_name_shim \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# hwui
$(call inherit-product, frameworks/native/build/phone-xxhdpi-3072-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-3072-hwui-memory.mk)
	
# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/ft5x06_ts.idc:/system/usr/idc/ft5x06_ts.idc \
    $(LOCAL_PATH)/configs/keylayout/gpio-keys.kl:/system/usr/keylayout/gpio-keys.kl \
    $(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:/system/usr/keylayout/sec_touchkey.kl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl
	
# Lights
PRODUCT_PACKAGES += \
    lights.universal5433 \
    android.hardware.light@2.0-impl

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

# Memory
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl
	
# Overlay
#DEVICE_PACKAGE_OVERLAYS += device/samsung/gts2-common/overlay
	
# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
	frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
	frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/etc/permissions/android.hardware.vulkan.level-1.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.freeform_window_management.xml:system/etc/permissions/android.software.freeform_window_management.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.print.xml:system/etc/permissions/android.software.print.xml \
	frameworks/native/data/etc/android.software.picture_in_picture.xml:system/etc/permissions/android.software.picture_in_picture.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
	external/ant-wireless/antradio-library/com.dsi.ant.antradio_library.xml:system/etc/permissions/com.dsi.ant.antradio_library.xml

# Power
PRODUCT_PACKAGES += \
    power.universal5433 \
	android.hardware.power@1.0-impl
	
# Ramdisk
PRODUCT_PACKAGES += \
    fstab.universal5433 \
    init.power.rc \
    init.samsung.rc \
    init.wifi.rc \
    init.universal5433.rc \
    init.universal5433.usb.rc	

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl
	
# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl
	
# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/vendor/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/vendor/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
	macloader \
	wifiloader \
	hostapd \
	wificond \
	wifilogd \
	wlutil \
	libwpa_client \
	wpa_supplicant \
	wpa_supplicant.conf \
	android.hardware.wifi@1.0-service \
	android.hardware.wifi@1.0 \
	android.hardware.wifi@1.0-impl
	
# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Samsung LSI BSP
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5433/exynos5433.mk)	

# Vendor
$(call inherit-product, vendor/samsung/gts2-common/gts2-common-vendor.mk)
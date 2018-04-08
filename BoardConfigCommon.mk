LOCAL_PATH := device/samsung/gts2-common

### PLATFORM

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

BOARD_VENDOR := samsung

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53.a57

# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := cm
TARGET_SOC := exynos5433

# big.LITTLE load balancing
# ENABLE_CPUSETS := true

TARGET_BOOTLOADER_BOARD_NAME := universal5433

# Binder
TARGET_USES_64_BIT_BINDER := true

### FILESYSTEM

BOARD_BOOTIMAGE_PARTITION_SIZE := 14680064
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3145728000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27657240576
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := ext4

TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true

LZMA_RAMDISK_TARGETS := boot,recovery

### KERNEL

BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
TARGET_KERNEL_SOURCE := kernel/samsung/gts2
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-
BOARD_KERNEL_IMAGE_NAME := zImage

###

# ADB Legacy Interface
TARGET_USES_LEGACY_ADB_INTERFACE := true

# Ant+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio HAL variant
TARGET_AUDIOHAL_VARIANT := samsung

# Samsung Seiren audio
#BOARD_USE_ALP_AUDIO := true
#BOARD_USE_SEIREN_AUDIO := true

# Bootanimation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 2048
TARGET_SCREEN_WIDTH := 1536

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_CUSTOM_BT_CONFIG := $(LOCAL_PATH)/bluetooth/libbt_vndcfg.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth

# Camera
BOARD_USE_SAMSUNG_CAMERAFORMAT_NV21 := true

# Charger/Healthd
WITH_LINEAGE_CHARGER := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_SHOW_PERCENTAGE := true
CHARGING_ENABLED_PATH := /sys/class/power_supply/battery/batt_lp_charging
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_NEON_BLITANTIH := true
BOARD_USES_FIMGAPI_V4L2 := false

# Graphics
USE_OPENGL_RENDERER := true

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# (G)SCALER
BOARD_USES_SCALER := true
BOARD_USES_DT := true

# Gralloc
TARGET_USES_GRALLOC1_ADAPTER := true

# ION
TARGET_USES_ION := true

# Hidl
DEVICE_MANIFEST_FILE := device/samsung/gts2-common/manifest.xml

# Hardware
#BOARD_HARDWARE_CLASS += $(LOCAL_PATH)/lineagehw
BOARD_HARDWARE_CLASS += hardware/samsung/lineagehw

# HDMI
#BOARD_USES_NEW_HDMI := true
#BOARD_USES_GSC_VIDEO := true
#BOARD_USES_CEC := true
BOARD_HDMI_INCAPABLE := true

# HWCServices
BOARD_USES_HWC_SERVICES := true
SKIP_DISPLAY_BLANK_CTRL := true

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(LOCAL_PATH)/include

# Lights
TARGET_PROVIDES_LIBLIGHT := false

# OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_VP8ENC_SUPPORT := true

# Video scaling issue workaround
TARGET_OMX_LEGACY_RESCALING := true

# Power
TARGET_POWERHAL_VARIANT := samsung

# Recovery
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/ramdisk/fstab.universal5433

# Seccomp filters
BOARD_SECCOMP_POLICY := device/samsung/gts2-common/seccomp
  
# SELinux
BOARD_SEPOLICY_DIRS += device/samsung/gts2-common/sepolicy

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Shims
TARGET_LD_SHIM_LIBS := /system/lib/hw/fingerprint.vendor.exynos5.so|/system/lib/libbauthtzcommon_shim.so:/system/vendor/lib/egl/libGLES_mali.so|/system/lib/libget_process_name_shim.so

# Virtual Display
BOARD_USES_VIRTUAL_DISPLAY := true

# WFD
BOARD_USES_WFD := true

# Wifi Macloader
BOARD_HAVE_SAMSUNG_WIFI := true

# WiFi
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_STA          := "/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/etc/wifi/bcmdhd_apsta.bin"
WPA_SUPPLICANT_USE_HIDL          := true

#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_PLATFORM := ums512

LOCAL_PATH := device/samsung/gta8wifi

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.0-impl-wrapper.recovery \
    android.hardware.boot@1.0-impl-wrapper \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.$(PRODUCT_PLATFORM) \
    bootctrl.$(PRODUCT_PLATFORM).recovery \
android.hardware.fastboot@1.0-impl-mock \
    fastbootd

PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_SHIPPING_API_LEVEL := 30

TARGET_OTA_ASSERT_DEVICE := gta8wifi

TARGET_COPY_OUT_VENDOR := vendor

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# TWRP specific build flags
TW_DEVICE_VERSION := X200XXS3CWG2
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := "/sys/class/backlight/sprd_backlight/brightness"
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_EXTERNAL_STORAGE := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_NTFS_3G := true
TW_USE_NEW_MINADBD := true
TW_USE_TOOLBOX := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_LEGACY_PROPS := true
TW_NO_BIND_SYSTEM := true
TW_NO_SCREEN_BLANK := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_DEVICE_VERSION := 1
TW_EXTRA_LANGUAGES := true
TW_USTARGET_USERIMAGES_USE_EXT4 := true
TW_NEVER_UNMOUNT_SYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USES_MKE2FS := true
TW_NO_BIND_SYSTEM := true
TW_NO_SCREEN_TIMEOUT := true
TW_FRAMERATE := 60
TW_EXCLUDE_APEX := true
TW_USE_NEW_MINADBD := true
TW_DEFAULT_BRIGHTNESS := 1200
TW_INCLUDE_RESETPROP := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
RECOVERY_SDCARD_ON_DATA := true

# tzdata
PRODUCT_PACKAGES_ENG += \
    tzdata_twrp

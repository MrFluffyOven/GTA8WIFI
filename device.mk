LOCAL_PATH := device/samsung/gta8wifi

PRODUCT_PLATFORM := ums512
PRODUCT_USE_DYNAMIC_PARTITIONS := true

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
    
    # Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Additional target Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libpuresoftkeymasterdevice \
    libdmabufheap.so \
    libsqlite.so \
    libbinder.so \
    libnativewindow.so \
TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdmabufheap.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsqlite.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libbinder.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libnativewindow.so \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# tzdata
PRODUCT_PACKAGES_ENG += \
    tzdata_twrp
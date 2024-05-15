# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Include GSI keys
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

LOCAL_PATH := device/samsung/gta8wifi

# API levels
PRODUCT_SHIPPING_API_LEVEL := 30

# Dynamic
PRODUCT_PLATFORM := ums512
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Product characteristics
PRODUCT_CHARACTERISTICS := tablet

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
    android.hardware.health@2.1-service-samsung

# Additional target Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libgatekeeper \
    libgatekeeper_aidl \
    libkeymint \
    libkeymint_support \
    libkeystore2_aaid \
    libkeystore2_crypto \
    libkeystore-engine \
    libkeystore2_apc_compat \
    libpuresoftkeymasterdevice \
    android.security.authorization-ndk \
    android.security.legacykeystore-ndk \
    android.hidl.allocator@1.0 \
    android.hidl.memory@1.0 \
    android.hidl.memory.token@1.0 \
    android.system.wifi.keystore@1.0 \
    libkeystore-attestation-application-id \
    android.hardware.security.keymint-V1-ndk \
    android.hardware.security.keymint-V3-ndk \
    android.hardware.security.secureclock-V1-ndk \
    android.hardware.security.sharedsecret-V1-ndk \
    android.hardware.keymaster@3.0 \
    android.hardware.keymaster@4.0 \
    android.hardware.keymaster@4.1 \
    android.hardware.keymaster-V4-ndk \
    android.hardware.gatekeeper@1.0 \
    android.hardware.gatekeeper-V1-ndk \
    android.hardware.thermal@1.0 \
    android.hardware.thermal@2.0 \
    libsoft_attestation_cert \
    libdmabufheap \
    libdk_native_keymaster \
    lib_native_client.dk.samsung \
    lib_nativeJni.dk.samsung \
    lib_android_keymaster_keymint_utils \
    libhidlmemory \
    libcppbor_external \
    libcppcose_rkp \
    libion \
    libxml2 \
    libcrypto \
    libcrypto_utils \
    libbinder \
    libbinder_ndk \
    libutils \
    libnetutils \
    libsce_v1.crypto.samsung \
    libsamsung_keystore_utils \
    android.system.keystore2-V1-ndk \
    android.system.keystore2-V3-ndk \
    libcutils \
    android.hardware.security.rkp-V3-ndk \
    libkeymaster_messages \
    libkeymaster_portable \
    libhardware \
    libkeystore-attestation-application-id \
    android.system.keystore2-V1-ndk \
    android.hardware.confirmationui@1.0 \
    android.hardware.confirmationui-V1-ndk \
    liblog \
    libhidlbase \
    libkeymaster4support \
    libkeymaster4_1support \
    libbase \
    libandroidicu \
    libvndksupport \
RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libgatekeeper.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libgatekeeper_aidl.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymint.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymint_support.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore2_aaid.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore2_crypto.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore-engine.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore2_apc_compat.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.security.authorization-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.security.legacykeystore-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.allocator@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hidl.memory.token@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.system.wifi.keystore@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore-attestation-application-id \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.security.keymint-V1-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.security.keymint-V3-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.security.secureclock-V1-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.security.sharedsecret-V1-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@3.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster@4.1.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.keymaster-V4-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.gatekeeper@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.gatekeeper-V1-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.thermal@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.thermal@2.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsoft_attestation_cert.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdmabufheap.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libdk_native_keymaster.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/lib_native_client.dk.samsung.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/lib_nativeJni.dk.samsung.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/lib_android_keymaster_keymint_utils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlmemory.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcppbor_external.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcppcose_rkp.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libxml2.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/liblog.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcrypto.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcrypto_utils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libbinder.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libbinder_ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libnetutils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsce_v1.crypto.samsung.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libsamsung_keystore_utils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.system.keystore-V1-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.system.keystore-V3-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libcutils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.security.rkp-V3-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_messages.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_portable.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhardware.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeystore-attestation-application-id.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.system.keystore2-V1-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libutils.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.confirmationui@1.0.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/android.hardware.confirmationui-V1-ndk.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libhidlbase.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4support.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4_1support.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libbase.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libandroidicu.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libvndksupport.so \

    
# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# tzdata
PRODUCT_PACKAGES_ENG += \
    tzdata_twrp

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

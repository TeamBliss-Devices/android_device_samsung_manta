# Resolution values for bootanimation
TARGET_SCREEN_HEIGHT := 1600
TARGET_SCREEN_WIDTH := 2560
TARGET_BOOTANIMATION_SIZE := 720x480

# Release name
PRODUCT_RELEASE_NAME := Nexus10

# Inherit some common CM stuff.
$(call inherit-product, vendor/bliss/config/common_full_tablet_wifionly.mk)

# Enhanced NFC
$(call inherit-product, vendor/bliss/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/manta/full_manta.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := manta
PRODUCT_NAME := bliss_manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mantaray \
    BUILD_FINGERPRINT=google/mantaray/manta:5.1.0/LMY47D/1743759:user/release-keys \
    PRIVATE_BUILD_DESC="mantaray-user 5.1.0 LMY47D 1743759 release-keys"

# Inherit GSM common stuff
$(call inherit-product, vendor/rootbox/configs/gsm.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# Inherit AOSP device configuration for evita
$(call inherit-product, device/htc/evita/device_evita.mk)

# evita Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/evita

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_evita

# Setup device specific product configuration
PRODUCT_NAME := rootbox_evita
PRODUCT_BRAND := htc
PRODUCT_DEVICE := evita
PRODUCT_MODEL := HTC One X
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_evita BUILD_FINGERPRINT=cingular_us/evita/evita:4.1.1/JRO03C/131981.6:user/release-keys PRIVATE_BUILD_DESC="3.18.502.6 CL131981 release-keys" BUILD_NUMBER=79936

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/bootanimation/bootanimation_1280_720.zip:system/media/bootanimation.zip

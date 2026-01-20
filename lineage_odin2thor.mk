#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from odin2thor device
$(call inherit-product, device/ayn/odin2thor/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_odin2thor
PRODUCT_DEVICE := odin2thor
PRODUCT_MANUFACTURER := AYN
PRODUCT_BRAND := qti
PRODUCT_MODEL := Thor
PRODUCT_CHARACTERISTICS := tablet

PRODUCT_GMS_CLIENTID_BASE := android-uct

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 13 TKQ1.231222.001 Thor01122156 release-keys" \
    BuildFingerprint=qti/qssi/qssi:13/TKQ1.231222.001/Thor01122156:user/release-keys \
    DeviceProduct=kalama

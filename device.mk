#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/fts_ts.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/fts_ts.idc

# Overlay
PRODUCT_PACKAGES += \
    Frameworks-Thor-Overlay \
    Settings-Thor-Overlay \
    SettingsProvider-Thor-Overlay \
    SystemUI-Thor-Overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/ayn/qcs8550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/ayn/odin2thor/odin2thor-vendor.mk)

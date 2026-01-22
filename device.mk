#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Overlay
PRODUCT_PACKAGES += \
    Frameworks-Thor-Overlay \
    Settings-Thor-Overlay \
    SettingsProvider-Thor-Overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Vibrator
$(call soong_config_set_bool,qti_vibrator,use_effect_stream,true)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/ayn/qcs8550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/ayn/odin2thor/odin2thor-vendor.mk)

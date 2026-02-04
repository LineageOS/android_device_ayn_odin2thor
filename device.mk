#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/display/display_settings.xml:$(TARGET_COPY_OUT_VENDOR)/etc/display_settings.xml \
    $(LOCAL_PATH)/configs/display/device_state_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/devicestate/device_state_configuration.xml \
    $(LOCAL_PATH)/configs/display/display_id_4630946441858561667.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946441858561667.xml \
    $(LOCAL_PATH)/configs/display/display_id_4630946482288158084.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_id_4630946482288158084.xml \
    $(LOCAL_PATH)/configs/display/display_layout_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/displayconfig/display_layout_configuration.xml

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/idc/fts_ts.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/fts_ts.idc \
    $(LOCAL_PATH)/configs/idc/fts_ts_secondary.idc:$(TARGET_COPY_OUT_VENDOR)/usr/idc/fts_ts_secondary.idc

# Overlay
PRODUCT_PACKAGES += \
    Frameworks-Thor-Overlay \
    Settings-Thor-Overlay \
    SettingsProvider-Thor-Overlay

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/ayn/qcs8550-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/ayn/odin2thor/odin2thor-vendor.mk)

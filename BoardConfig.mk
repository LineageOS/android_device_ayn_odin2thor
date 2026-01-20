#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/ayn/qcs8550-common/BoardConfigCommon.mk

DEVICE_PATH := device/ayn/odin2thor

# Include the proprietary files BoardConfig.
include vendor/ayn/odin2thor/BoardConfigVendor.mk

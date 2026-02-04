#!/usr/bin/env -S PYTHONPATH=../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)

from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

namespace_imports = [
    'vendor/ayn/qcs8550-common',
]

blob_fixups: blob_fixups_user_type = {
    'vendor/etc/sensors/config/kailua_hdk_sh5001_0.json': blob_fixup()
        .regex_replace('"ver": "0"', '"ver": "1"')
        .regex_replace('"data": "-y"', '"data": "+x"')
        .regex_replace('"data": "-x"', '"data": "-y"'),
}  # fmt: skip

module = ExtractUtilsModule(
    'odin2thor',
    'ayn',
    namespace_imports=namespace_imports,
    blob_fixups=blob_fixups,
    add_firmware_proprietary_file=True,
)

if __name__ == '__main__':
    utils = ExtractUtils.device_with_common(
        module, 'qcs8550-common', module.vendor
    )
    utils.run()

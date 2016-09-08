#
# Copyright 2015 The Jedi Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit jedi board config
include device/huawei/angler/JediBoardConfig.mk

# Inherit AOSP device configuration
$(call inherit-product, device/huawei/angler/aosp_angler.mk)

# include vendor blobs
$(call inherit-product-if-exists, vendor/huawei/angler/angler-vendor.mk)

# Override product naming for Omni
PRODUCT_NAME := jedi_angler
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 6p
PRODUCT_MANUFACTURER := Huawei
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="google/angler/angler:7.0/NRD90M/3085278:user/release-keys" \
    PRIVATE_BUILD_DESC="angler-user 7.0 NRD90M 3085278 release-keys"

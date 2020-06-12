# Copyright (C) 2020 The LineageOS Project
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

# Inherit 64-bit configs
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#Inherit device configuration
$(call inherit-product, device/motorola/albus/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_albus
PRODUCT_DEVICE := albus
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto Z2 Play
PRODUCT_MANUFACTURER := motorola

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2019-08-01

PRODUCT_GMS_CLIENTID_BASE := android-motorola

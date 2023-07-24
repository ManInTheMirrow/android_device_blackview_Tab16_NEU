#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Virtual A/B OTA
#$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from Tab16_NEU device
$(call inherit-product, device/blackview/Tab16_NEU/device.mk)

# Inherit some common recovery stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Tab16_NEU
PRODUCT_NAME := twrp_Tab16_NEU
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := Tab 16
PRODUCT_MANUFACTURER := Blackview

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Tab16_NEU \
    PRODUCT_NAME=Tab16_NEU \
    PRIVATE_BUILD_DESC="Tab16_NEU-user 12 SP1A.210812.016 221017 release-keys"

BUILD_FINGERPRINT := Blackview/Tab16_NEU/Tab16_NEU:12/SP1A.210812.016/221017:user/release-keys
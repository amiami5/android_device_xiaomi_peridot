#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from peridot device
$(call inherit-product, device/xiaomi/peridot/device.mk)

PRODUCT_NAME := lineage_peridot
PRODUCT_DEVICE := peridot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24069PC21G

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="peridot_global-user 15 AQ3A.240912.001 OS2.0.204.0.VNPMIXM release-keys" \
    BuildFingerprint=POCO/peridot_global/peridot:15/AQ3A.240912.001/OS2.0.204.0.VNPMIXM:user/release-keys \
    DeviceName=peridot \
    DeviceProduct=peridot_global \
    SystemName=peridot_global \
    SystemDevice=peridot

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Axion stuff
TARGET_ENABLE_BLUR := true
PRODUCT_NO_CAMERA := true
TARGET_INCLUDES_LOS_PREBUILTS := false

# Camera Flags
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 20
AXION_MAINTAINER := amisuke
AXION_PROCESSOR := Snapdragon_8s_Gen_3

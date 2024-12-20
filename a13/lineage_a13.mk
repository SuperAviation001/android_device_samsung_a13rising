#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from a13 device
$(call inherit-product, device/samsung/a13/device.mk)

PRODUCT_DEVICE := a13
PRODUCT_NAME := lineage_a13
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A135F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a13nsxx-user 13 TP1A.220624.014 A135FXXU3CWB9 release-keys"

BUILD_FINGERPRINT := samsung/a13nsxx/a13:13/TP1A.220624.014/A135FXXU3CWB9:user/release-keys

# Rising Info (REMOVE THIS IF YOU ARE BUILDING LINEAGE OR OTHER CUSTOM ROMS)

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Exynos 850" \
    RisingMaintainer="SchooshOrSuper"

#Settings blur
TARGET_ENABLE_BLUR := true/false
#Launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

# Camera
PRODUCT_NO_CAMERA := true

# GMS FLAGS
#CHOOSE GMS BUILD
RISING_PACKAGE_TYPE := "WITH_GMS"
#CHOOSE TRUE GMS FLAGS
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

include device/xiaomi/sdm660-common/BoardConfigCommon.mk

# Device Path
DEVICE_PATH := device/xiaomi/jasmine_sprout


# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# A/B
AB_OTA_UPDATER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# DT2W
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm660
TARGET_KERNEL_CONFIG := wayne_defconfig

# Manifest
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Platform
BOARD_VENDOR_PLATFORM := xiaomi-sdm660

# WLAN MAC
WLAN_MAC_SYMLINK := true

# SHRP Settings
SHRP_DEVICE_CODE := jasmine_sprout 
SHRP_PATH := device/xiaomi/jasmine_sprout
SHRP_MAINTAINER := XRed_CubeX
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A/B
SHRP_EDL_MODE := 1
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb-otg
SHRP_FLASH := 1
SHRP_AB := true

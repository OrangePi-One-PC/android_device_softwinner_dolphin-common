#
# Copyright (C) 2013 The Android Open-Source Project
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

# cpu stuff
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7

TARGET_NO_BOOTLOADER := true
TARGET_PROVIDES_INIT_RC :=true

BOARD_USES_SECURE_SERVICES := true
TARGET_USE_NEON_OPTIMIZATION := true
TARGET_ARCH_LOWMEM := false
TARGET_BOARD_PLATFORM := dolphin
TARGET_BOOTLOADER_BOARD_NAME := exdroid

BOARD_EGL_CFG := device/softwinner/dolphin-common/egl/egl.cfg

USE_OPENGL_RENDERER := true
#VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
#SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
TARGET_USES_ION := true

# cortex-a7 & a15 opt for sunxi plat
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true

# opt di for sunxi platform
TARGET_USE_BOOSTUP_OPZ := true

#distinguish CHIP PLATFORM
SW_CHIP_PLATFORM := H3

# Buffer Number of FBTarget Layer
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# sync the sofware vsync and hardware vsync
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# widevine
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3

#marlin
BOARD_MARLIN_USE_SECUREOS := 0

# hardware module include file path
TARGET_HARDWARE_INCLUDE := \
    device/softwinner/dolphin-common/hardware/include

BOARD_CHARGER_ENABLE_SUSPEND := true

BOARD_SEPOLICY_DIRS := \
	device/softwinner/common/sepolicy

BOARD_SEPOLICY_UNION := \
    file_contexts \
    genfs_contexts \
    app.te \
    mediaserver.te \
    domain.te \
    untrusted_app.te \
    device.te \
    surfaceflinger.te \
    system.te \
    healthd.te \
    vold.te \
    mount.te \
    netd.te

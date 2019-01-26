# Platform
TARGET_BOARD_PLATFORM := exynos5
TARGET_BOARD_PLATFORM_GPU := mali-t830mp2
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := universal7870

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_USES_UNCOMPRESSED_KERNEL := true

BOARD_KERNEL_CMDLINE := # Exynos doesn't take cmdline arguments from boot image
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
# 000RU = recovery kernel, 000KU = system kernel
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --board SRPPE16A000KU
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true

BOARD_BOOTIMAGE_PARTITION_SIZE     := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 39845888
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 3072000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11784192000
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/samsung/on7xelte/Image
TARGET_PREBUILT_DTB := device/samsung/on7xelte/dt.img

# Use this flag if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_CUSTOM_BOOTIMG_MK :=  device/samsung/on7xelte/bootimg.mk

# TWRP specific build flags
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/13600000.usb/13600000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/14800000.dsim/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_INCLUDE_NTFS_3G := true
TW_EXTRA_LANGUAGES := true

# Color fix
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"

# Encryption support
TW_INCLUDE_CRYPTO := true

# Init properties from bootloader version, ex. model info
TARGET_UNIFIED_DEVICE := true
TARGET_INIT_VENDOR_LIB := libinit_on7xelte
TARGET_RECOVERY_DEVICE_MODULES := libinit_on7xelte
TARGET_LIBINIT_DEFINES_FILE := device/samsung/on7xelte/init/init_on7xelte.cpp

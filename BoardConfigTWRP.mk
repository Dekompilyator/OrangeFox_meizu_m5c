# Brightness
TW_BRIGHTNESS_PATH    := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 175
TW_MAX_BRIGHTNESS     := 255

# Display
TW_NO_SCREEN_BLANK := true
TW_FRAMERATE       := 60

# Encryption
TW_INCLUDE_CRYPTO          := true
TW_INCLUDE_CRYPTO_FBE      := false
TW_CRYPTO_FS_TYPE          := "ext4"
TW_CRYPTO_REAL_BLKDEV      := "/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/userdata"
TW_CRYPTO_MNT_POINT        := "/data"
TW_CRYPTO_METADATA_BLKDEV  := "/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/metadata"

# Extras
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_RESETPROP    := true

# Filesystem
BOARD_HAS_NO_REAL_SDCARD := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/MicroSD"
TW_INCLUDE_NTFS_3G := true

# Thermal
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone1/temp"

# Battery
BOARD_CHARGER_SHOW_PERCENTAGE := true
TW_CUSTOM_BATTERY_PATH := /sys/class/power_supply/battery
TW_BATTERY_SYSFS_WAIT_SECONDS := 5

# Time
BOARD_HAS_NO_REAL_RTC := true

# UI
TW_THEME              := portrait_hdpi
TW_EXTRA_LANGUAGES    := true

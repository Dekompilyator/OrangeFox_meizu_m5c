add_lunch_combo omni_m5c-eng

export ALLOW_MISSING_DEPENDENCIES=true
export FOX_REPLACE_TOOLBOX_GETPROP=1
export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER=1
export LC_ALL="C"
export OF_LEGACY_SHAR512=1

FDEVICE="m5c"

fox_get_target_device() {
local chkdev=$(echo "$BASH_SOURCE" | grep -w $FDEVICE)
    if [ -n "$chkdev" ]; then
        FOX_BUILD_DEVICE="$FDEVICE"
    else
        chkdev=$(set | grep BASH_ARGV | grep -w $FDEVICE)
        [ -n "$chkdev" ] && FOX_BUILD_DEVICE="$FDEVICE"
    fi
}

if [ -z "$1" -a -z "$FOX_BUILD_DEVICE" ]; then
    fox_get_target_device
fi

if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
    export OF_MAINTAINER="Dekompilyator"
    export OF_TARGET_DEVICES=m5c,m5c_m710h
    export FOX_BUILD_TYPE="Stable"
    export FOX_VERSION=R11.1_1.10
fi

# Let's see which are our build vars
    if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
        export | grep "FOX" >> $FOX_BUILD_LOG_FILE
        export | grep "OF_" >> $FOX_BUILD_LOG_FILE
        export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
        export | grep "TW_" >> $FOX_BUILD_LOG_FILE
    fi
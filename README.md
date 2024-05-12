## Recovery Device Tree for the Samsung Galaxy Tab A8 [SM-X200]

- Custom Kernel by [cd-Crypton](https://github.com/cd-Crypton)
- Contributor [Magendanz](https://github.com/Magendanz)
- Contributor [Maxim](https://github.com/maxim-root)

# How-to compile it:

## twrp 12.1 Manifest
    repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
## Sync
    repo sync
## Clone Device Tree
    git clone https://github.com/MrFluffyOven/android_device_samsung_gta8wifi.git -b android-14 device/samsung/gta8wifi
## build:
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_gta8wifi-eng; mka recoveryimage
## [Kernel Tree](https://github.com/cd-Crypton/android_kernel_samsung_t618)

## Recovery Device Tree for the Samsung Galaxy Tab A8 [SM-X200]

- # TeamWin Manifest
#
    repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
 - ## Sync
#
    repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

- #Clone MrFluffyOven & Maxim's tree
#
    git clone   https://github.com/MrFluffyOven/android_device_samsung_gta8wifi.git -b twrp-12.1 device/samsung/gta8wifi
- # build:
#
    export ALLOW_MISSING_DEPENDENCIES=true; . build/envsetup.sh; lunch twrp_gta8wifi-eng; mka recoveryimage
## Multidisabler
    Boot twrp, Wipe data, Reboot Recovery, go to twrp terminal, type "multidisabler" hit enter/return , Wipe data again, Encryption should be Disabled

## vbmeta (test)
    boot fastboot: (fastboot --disable-verity --disable-verification flash vbmeta_system vbmeta_system.img) (fastboot --disable-verity --disable-verification flash vbmeta_vendor vbmeta_vendor.img)(fastboot --disable-verity --disable-verification flash vbmeta vbmeta.img)

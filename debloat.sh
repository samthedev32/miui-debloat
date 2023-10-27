#!/bin/bash

# debloat-er for MIUI 12.5 (Pine)
# https://xiaomifirmwareupdater.com/miui/pine/stable/V12.5.3.0.QCMEUXM/


# TODO: https://technastic.com/xiaomi-bloatware-list-miui/

# List connected devices
adb devices

# List of packages to uninstall
packages=(
# Preinstalled Games
"com.block.puzzle.game.hippo.mi"
"com.sukhavati.gotoplaying.bubble.BubbleShooter.mint"
"com.crazy.juicer.xm"
"com.logame.eliminateintruder3d"
"com.mintgames.triplecrush.tile.fun"

# Facebook & Services
"com.facebook.katana"
"com.facebook.services"
"com.facebook.system"
"com.facebook.appmanager"

"com.netflix.mediaclient"
"com.netflix.partner.activation"

"com.mi.global.bbs"
"cn.wps.moffice_eng"

# Android / Google Apps
"com.android.chrome" # i prefer firefox
"com.google.android.apps.docs" # i don't use you
"com.google.android.apps.maps" # i luv maps, but i prefer storage
"com.android.deskclock" # replaced by Google Clock 
"com.android.soundrecorder" # i'll use Dolby On

"com.google.android.apps.tachyon"
"com.google.android.videos"
"com.google.android.music"

# Mi Apps
"com.miui.calculator" # replaced by Google Calculator
"com.mi.android.globalFileexplorer" # replaced by Google Files

"com.miui.fm" # who listens to radio anyways?
"com.miui.gallery" # replaced by Google Photos
"com.mi.globalbrowser" # we'll have firefox, remember?
"com.miui.videoplayer" # just use vlc
"com.miui.player" # can't you afford spotify?

"com.miui.analytics"
"com.miui.hybrid"
"com.miui.hybrid.accessory"
"com.miui.msa.global"
"com.miui.phrase"
"com.miui.miservice"

"com.xiaomi.midrop" # i never use these stuff
"com.miui.cleanmaster" # takes up more space than cleans
"com.xiaomi.calendar"
"com.miui.cloudbackup"
"com.miui.backup"

)

# Uninstall packages using ADB
for package in "${packages[@]}"; do
  echo Uninstalling "$package"
  adb shell pm uninstall "$package"
  adb shell pm uninstall --user 0 "$package"
done

#!/bin/bash
set -e
cd ${0%/*}
rm -rf ./out/magisk_module
./gradlew clean
./gradlew :module:assembleRelease
adb shell rm -fv "/data/local/tmp/libxfingerprint_pay_qq.dex"
adb push ./out/*.zip /sdcard/Download/

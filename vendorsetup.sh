cat vendor/xiaomi/peridot/proprietary/system/priv-app/MiuiCamera/MiuiCamera.apk.part* > vendor/xiaomi/peridot/proprietary/system/priv-app/MiuiCamera/MiuiCamera.apk
echo "指紋認証の修正"
cd frameworks/base && git fetch https://github.com/amiami5/android_frameworks_base && git cherry-pick c277f5a5bf86bdd1fe37d98f21fcc78e68b3805d && \
cd ../../

echo "指紋認証の修正"
cd frameworks/base && git fetch https://github.com/amiami5/android_frameworks_base 15.0 && git cherry-pick 2196c754b8f8e93050f12b60b4f3d8e7b8fa3520
cd ../../

echo "updaterを自分に向ける"
cd packages/apps/Updater && git fetch https://github.com/amiami5/android_packages_apps_Updater.git 15.0 && git cherry-pick 18c5680d874d11d8b5950ef903c712beccf20df5
cd ../../../
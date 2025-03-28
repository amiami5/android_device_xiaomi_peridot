echo "A15qpr1用指紋認証"
cd frameworks/base && git fetch git@gitea.com:amisuke/android_frameworks_base.git 15.0-qpr2 && git cherry-pick c513b1383da8f19dac2d4b2a491fa1f6f28462cf
cd ../../

echo "指紋認証の修正"
cd frameworks/base && git fetch git@gitea.com:amisuke/android_frameworks_base.git 15.0-qpr2 && git cherry-pick ce79a37c81cb22e125a8f2496e4a65cd825a4907
cd ../../

echo "updaterを自分に向ける"
cd packages/apps/Updater && git fetch https://github.com/amiami5/android_packages_apps_Updater.git 15.0 && git cherry-pick 18c5680d874d11d8b5950ef903c712beccf20df5
cd ../../../

echo "A15qpr1用指紋認証"
cd frameworks/base && git fetch git@gitea.com:amisuke/android_frameworks_base.git 15.0 && git cherry-pick d60fa41335ea36f9b3b838bca795e89fef3972cd
cd ../../

echo "指紋認証の修正"
cd frameworks/base && git fetch git@gitea.com:amisuke/android_frameworks_base.git 15.0 && git cherry-pick ed3506d8d1a3ab902c66216462228afd6311838d
cd ../../

echo "updaterを自分に向ける"
cd packages/apps/Updater && git fetch https://github.com/amiami5/android_packages_apps_Updater.git 15.0 && git cherry-pick 18c5680d874d11d8b5950ef903c712beccf20df5
cd ../../../
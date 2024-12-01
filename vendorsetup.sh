echo "指紋認証の修正"
cd frameworks/base && git fetch https://github.com/amiami5/android_frameworks_base 15.0 && git cherry-pick 2afc83ee309af033cea8c2b2a9b176513d432957
cd ../../
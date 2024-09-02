echo "指紋認証の修正"
cd frameworks/base && git fetch https://github.com/amiami5/android_frameworks_base && git cherry-pick e38018129a7f4f4b18ca85953522e0c2e7f9f3a4 && \
cd ../../
echo "miuicamera"
cat vendor/xiaomi/peridot/proprietary/system/priv-app/MiuiCamera/MiuiCamera.apk.part* > vendor/xiaomi/peridot/proprietary/system/priv-app/MiuiCamera/MiuiCamera.apk

echo "指紋認証の修正"
cd frameworks/base && git fetch https://github.com/amiami5/android_frameworks_base && git cherry-pick d1e39761893400346be1de3dbd27b3dfbf795c6e

echo "指紋認証の修正その他その１"
git cherry-pick 07c04537ead76c9bb6b8f8bf2a7cea4eaac15eb5

echo "指紋認証の修正その他その２"
git cherry-pick 114e8d18925664dfa63601ad977061d57455e639

echo "指紋認証の修正その他その３"
git cherry-pick 02ca6daee92f269eea8b8002804119ad623d3e4a

cd ../../
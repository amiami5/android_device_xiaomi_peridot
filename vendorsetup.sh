#!/bin/bash

# AGM
(
  cd hardware/qcom-caf/sm8650/audio/agm || exit 1
  echo "Fetching AGM updates..."
  git fetch https://github.com/xiaomi-peridot/vendor_qcom_opensource_agm lineage-22.2-caf-sm8650
  git reset --hard FETCH_HEAD
)

# Vendor (fresh clone)
echo "Cloning vendor tree..."
rm -rf vendor/xiaomi/peridot
git clone -b 16 https://github.com/sm8635-dev/vendor_xiaomi_peridot.git vendor/xiaomi/peridot

# Kernel (fresh clone)
echo "Cloning kernel tree..."
rm -rf device/xiaomi/peridot-kernel
git clone -b 16 https://github.com/sm8635-dev/device_xiaomi_peridot-kernel.git device/xiaomi/peridot-kernel

# Hardware Xiaomi (fresh clone)
echo "Cloning Xiaomi hardware..."
rm -rf hardware/xiaomi
git clone -b axion-16 https://github.com/sm8635-dev/hardware_xiaomi.git hardware/xiaomi

# Dolby cloning
echo "Cloning Dolby Atmos..."
rm -rf hardware/dolby
git clone -b 16-oss https://github.com/sm8635-dev/hardware_dolby.git hardware/dolby

# Refresh signing keys
if [ -d vendor/lineage-priv/keys ]; then
  echo "Removing existing signing keys..."
  rm -rf vendor/lineage-priv/keys
fi
echo "Cloning fresh signing keys..."
git clone https://github.com/Neon-Duchamp/keys.git -b old-keys vendor/lineage-priv/keys

# Always back to root at the end
if command -v croot &>/dev/null; then
  croot
else
  cd "$ANDROID_BUILD_TOP" || true
fi

echo "vendorsetup.sh execution complete."

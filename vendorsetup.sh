#!/bin/bash

# AGM
(
  cd hardware/qcom-caf/sm8650/audio/agm || exit 1
  echo "Fetching AGM updates..."
  git fetch https://github.com/sm8635-dev/vendor_qcom_opensource_agm-sm8650 16
  git cherry-pick be29bcf0c9542a8417199528544f9fbea9c9e015
)


# Hardwaee Sony (fresh clone)
echo "Cloning Sony hardware..."
rm -rf hardware/sony/timekeep
git clone -b lineage-22.2 https://github.com/LineageOS/android_hardware_sony_timekeep.git hardware/sony/timekeep





# Always back to root at the end
if command -v croot &>/dev/null; then
  croot
else
  cd "$ANDROID_BUILD_TOP" || true
fi

echo "vendorsetup.sh execution complete."

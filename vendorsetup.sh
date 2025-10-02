# This script is sourced after the lunch command.

#7ac03d638c07bac1cb1ae9749fdf7e0db60b4a7a 1.0.4
#7a08683c741f9d42bea8cb7f28823f07a57332bc 1.0.5
#1d258196b1abdeec0437c0c5f0c748e05ef61300 1.0.6
#407826396b29430e5f18fadde5d243f45ccca04c 1.0.7
#9d9f9ed5d5f3a66a2f44e24c926075554f9275ce 1.0.8
#2241696498ce9dd742ce80b52c3ed6cca26e03ea 1.0.9

# --- KernelSU Version Pinning (simplified) ---
# Assuming the submodule exists, forcefully check out a known stable commit.

# 'T' variable is set by envsetup.sh to the top of the source tree.
if [ -n "$T" ]; then
    STABLE_KSU_COMMIT="9d9f9ed5d5f3a66a2f44e24c926075554f9275ce"
    KSU_SUBMODULE_PATH="$T/kernel/xiaomi/sm8635/KernelSU-Next"

    echo "==> Forcefully pinning KernelSU to stable commit..."

    # Use a subshell to perform git operations.
    # The '|| true' ensures the script won't stop even if git commands fail.
    (
        cd "$KSU_SUBMODULE_PATH" && \
        git fetch --all && \
        git checkout "$STABLE_KSU_COMMIT"
    ) || true

    echo "KernelSU pinning process attempted."
fi
# --- End of KernelSU Version Pinning ---
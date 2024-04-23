LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := RemovePackages
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_TAGS := optional
LOCAL_OVERRIDES_PACKAGES := Backgrounds Eleven Twelve Seedvault Stk CarrierMetrics DevicePolicyPrebuilt-v10052480 PrebuiltGoogleAdservicesTvp PrebuiltGoogleTelemetryTvp SoundAmplifierPrebuilt_v4.7.638126989 SwitchAccessPrebuilt_1.15.0.629986523 Tycho VoiceAccessPrebuilt WallpaperEmojiPrebuilt-v470 AmbientStreaming BetterBugStub CarrierLocation CbrsNetworkMonitor ConfigUpdater CreativeAssistant DeviceIntelligenceNetworkPrebuilt-U.32_V.7_playstore_astrea_20240725.00_RC01 KidsSupervisionStub MaestroPrebuilt OdadPrebuilt PartnerSetupPrebuilt PixelSupportPrebuilt ScribePrebuilt_v7.0.633113815 SearchSelectorPrebuilt WallpaperEffect GoogleFeedback
LOCAL_UNINSTALLABLE_MODULE := true
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_SRC_FILES := /dev/null
include $(BUILD_PREBUILT)

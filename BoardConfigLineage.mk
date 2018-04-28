# Common board config for marlin, sailfish

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := lineageos_marlin_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin
KERNEL_TOOLCHAIN := ${ANDROID_BUILD_TOP}/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-gnu-7.2.1/bin
KERNEL_TOOLCHAIN_PREFIX := aarch64-linux-gnu-

# SDClang
SDCLANG := true
TARGET_USE_SDCLANG := true
SDCLANG_PATH := prebuilts/clang/host/linux-x86/sdclang-4.0/bin
SDCLANG_COMMON_FLAGS := -O3 -mllvm -polly-run-dce -fvectorize -g0 -DNDEBUG

# Telephony
TARGET_PROVIDES_TELEPHONY_EXT := true

-include vendor/google/marlin/BoardConfigVendor.mk

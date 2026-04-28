# Configs
PRODUCT_COPY_FILES += \
    device/xiaomi/tanzanite-camera/configs/default-permissions/default-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/default-permissions-miuicamera.xml \
    device/xiaomi/tanzanite-camera/configs/permissions/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    device/xiaomi/tanzanite-camera/configs/permissions/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.front.xml \
    device/xiaomi/tanzanite-camera/configs/permissions/android.hardware.camera.full.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.full.xml \
    device/xiaomi/tanzanite-camera/configs/permissions/android.hardware.camera.raw.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.raw.xml

# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    MiuiCamera

# Props dari leica-module (MTK Stable)
PRODUCT_SYSTEM_PROPERTIES += \
    persist.vendor.camera.enableAdvanceFeatures=0x3E7 \
    persist.vendor.camera.multicam=TRUE \
    persist.vendor.camera.multicam.fpsmatch=TRUE \
    persist.vendor.camera.multicam.framesync=1 \
    persist.vendor.camera.multicam.hwsync=TRUE \
    persist.vendor.camera.privapp.list=com.android.camera \
    persist.vendor.camera.picturesize.limit.enable=false \
    ro.boot.camera.config=_pro \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.control_privapp_permissions=log \
    ro.miui.notch=1 \
    ro.hardware.camera=xiaomi

# MiuiCamera JNI Symlinks (Mimic Magisk Stable Module)
PRODUCT_SYMLINKS += \
    /system/lib64/libcamera_algoup_jni.xiaomi.so:/system/priv-app/MiuiCamera/lib/arm64/libcamera_algoup_jni.xiaomi.so \
    /system/lib64/libcamera_mianode_jni.xiaomi.so:/system/priv-app/MiuiCamera/lib/arm64/libcamera_mianode_jni.xiaomi.so \
    /system/lib64/libmicampostproc_client.so:/system/priv-app/MiuiCamera/lib/arm64/libmicampostproc_client.so \
    /system/lib64/vendor.xiaomi.hardware.campostproc@1.0.so:/system/priv-app/MiuiCamera/lib/arm64/vendor.xiaomi.hardware.campostproc@1.0.so \
    /system/lib64/libSNPE.so:/system/priv-app/MiuiCamera/lib/arm64/libSNPE.so \
    /system/lib64/libmiocr_wrapper.so:/system/priv-app/MiuiCamera/lib/arm64/libmiocr_wrapper.so \
    /system/lib64/libsymphony-cpu.so:/system/priv-app/MiuiCamera/lib/arm64/libsymphony-cpu.so

# Sepolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
	device/xiaomi/tanzanite-camera/sepolicy/vendor

$(call inherit-product, device/xiaomi/tanzanite-camera/miuicamera-vendor.mk)

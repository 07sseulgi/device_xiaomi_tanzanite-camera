# Automatically generated file. DO NOT MODIFY

PRODUCT_SOONG_NAMESPACES += \
    device/xiaomi/tanzanite-camera

PRODUCT_COPY_FILES += \
    device/xiaomi/tanzanite-camera/proprietary/product/etc/device_features/tanzanite.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/device_features/tanzanite.xml \
    device/xiaomi/tanzanite-camera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    device/xiaomi/tanzanite-camera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml

PRODUCT_PACKAGES += \
    libcamera_algoup_jni.xiaomi \
    libcamera_mianode_jni.xiaomi \
    libmicampostproc_client \
    libSNPE \
    libmiocr_wrapper \
    libsymphony-cpu \
    vendor.xiaomi.hardware.campostproc@1.0 \
    MiuiCamera \
    MiuiCameraOverlay

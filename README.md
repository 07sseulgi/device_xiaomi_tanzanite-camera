# MiuiCamera-Leica
## Getting Started :
### Cloning :
• Clone this repo in device/xiaomi/tanzanite-camera in your working directory by :
```
git clone https://gitlab.com/hdzungx/vendor_xiaomi_miuicamera.git -b 14 device/xiaomi/tanzanite-camera
```
### Changes Required :
• You will need following changes in your device tree:

• Makefile changes
```
 $(call inherit-product-if-exists, device/xiaomi/tanzanite-camera/miuicamera.mk)
 ```

• Props Changes
```
PRODUCT_PRODUCT_PROPERTIES += \
    ro.product.mod_device=codename_global
```

• Done, continue building your ROM as you do normally.

• Credits:
```
@HolyBear @sevtinge @sipollo @lostark13
```

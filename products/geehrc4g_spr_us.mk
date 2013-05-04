# Inherit AOSP device configuration for geehrc4g_spr_us.
$(call inherit-product, device/lge/geehrc4g_spr_us/full_geehrc4g_spr_us.mk)

# Inherit CDMA common stuff.
$(call inherit-product, vendor/rootbox/configs/cdma.mk)

# Inherit RootBox common bits
$(call inherit-product, vendor/rootbox/configs/common.mk)

# geehrc4g_spr_us Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/rootbox/overlay/geehrc4g_spr_us

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_gee

# Setup device specific product configuration.
PRODUCT_NAME := rootbox_geehrc4g_spr_us
PRODUCT_BRAND := LGE
PRODUCT_MODEL := LG-LS970
PRODUCT_MANUFACTURER := LGE

#Set build fingerprint / ID / Prduct Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=geehrc4g_spr_us BUILD_FINGERPRINT=lge/geehrc4g_spr_us/geehrc4g:4.1.2/JZO54K/LS970ZVB.1360739022:user/release-keys PRIVATE_BUILD_DESC="geehrc4g_spr_us-user 4.1.2 JZO54K LS970ZVB.1360739022 release-keys"

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/rootbox/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

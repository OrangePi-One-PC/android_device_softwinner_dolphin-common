include device/softwinner/common/common.mk

DEVICE_PACKAGE_OVERLAYS := \
    device/softwinner/dolphin-common/overlay

PRODUCT_PACKAGES += \
    libion \
    sensors.dolphin \
    lights.dolphin \
    keystore.dolphin \
    hwcomposer.dolphin

#------------------ audio -------------------------
PRODUCT_PACKAGES += \
	audio.primary.dolphin \
	audio.a2dp.default \
	audio.usb.default  \
	audio.r_submix.default

PRODUCT_COPY_FILES += \
	device/softwinner/dolphin-common/hardware/audio/audio_policy.conf:system/etc/audio_policy.conf \
	device/softwinner/dolphin-common/hardware/audio/phone_volume.conf:system/etc/phone_volume.conf \
	device/softwinner/dolphin-common/hardware/audio/ac100_paths.xml:system/etc/ac100_paths.xml \
	device/softwinner/dolphin-common/overlay/frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

#-------------------------------------------------

#------------------ camere -------------------------
PRODUCT_PACKAGES += \
	camera.dolphin

#-------------------------------------------------

# video
#------------------ video -------------------------
PRODUCT_PACKAGES += \
	libcedarxbase \
	libcedarxosal \
	libcedarv \
	libcedarv_base \
	libcedarv_adapter \
	libve \
	libaw_audio \
	libaw_audioa \
	libswdrm \
	libfacedetection \
	libsmileeyeblink \
	libthirdpartstream \
	libcedarxsftstream \
	libion_alloc \
	libsrec_jni \
	libcnr \
	libjpgenc \
	libaw_venc \
	libaw_h264enc \
	libI420colorconvert \
	libstagefrighthw \
	libOmxCore \
	libOmxVenc \
	libOmxVdec \
	libvdecoder \
	libadecoder \
	libsdecoder \
	libnormal_audio \
	libad_audio \
	libVE \
	libMemAdapter \
	libplayer \
	libcdx_parser \
	libcdx_base \
	libcdx_stream \
	libawplayer \
	libawmetadataretriever \
	libaw_wvm \
	libOmxAdec \
	libCTC_MediaProcessor \
	libtvdemux \
	liblive555 \
	librtp     \
	libawavs   \
	libawh264  \
	libawh265  \
	libawh265soft \
	libawmjpeg    \
	libawmjpegplus \
	libawmpeg2    \
	libawmpeg4base \
	libawmpeg4divx311 \
	libawmpeg4h263   \
	libawmpeg4normal \
	libawmpeg4vp6    \
	libawmpeg4dx     \
	libawvp6soft     \
	libawvp8         \
	libawvp9soft     \
	libawwmv3        \
	libawwmv12soft   \
	libaw_env        \
	libtvdemux       \
	libOmxAdec       \
	libawrender      \
	libCTC_MediaProcessor

PRODUCT_COPY_FILES += \
	device/softwinner/dolphin-common/media_codecs.xml:system/etc/media_codecs.xml

#-------------------------------------------------

# face detection
PRODUCT_COPY_FILES += \
  device/softwinner/dolphin-common/facedetection/awfaceftr.aw:system/usr/share/bmd/awfaceftr.aw \
  device/softwinner/dolphin-common/facedetection/awfaceftr.ftr:system/usr/share/bmd/awfaceftr.ftr \
  device/softwinner/dolphin-common/facedetection/sm.awl:system/usr/share/bmd/sm.awl \
  device/softwinner/dolphin-common/facedetection/ey.awl:system/usr/share/bmd/ey.awl \
  device/softwinner/dolphin-common/facedetection/eb.awl:system/usr/share/bmd/eb.awl


# sensor
PRODUCT_COPY_FILES += \
    device/softwinner/dolphin-common/sensors.sh:system/bin/sensors.sh

# init.rc, init.sun8i.usb.rc
PRODUCT_COPY_FILES += \
    device/softwinner/dolphin-common/init.sun8i.rc:root/init.sun8i.rc \
    device/softwinner/dolphin-common/init.sun8i.usb.rc:root/init.sun8i.usb.rc


#------------------ egl -------------------------
PRODUCT_COPY_FILES += \
    device/softwinner/dolphin-common/egl/egl.cfg:system/lib/egl/egl.cfg \
    device/softwinner/dolphin-common/egl/gralloc.sun8i.so:system/lib/hw/gralloc.sun8i.so \
    device/softwinner/dolphin-common/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    device/softwinner/dolphin-common/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    device/softwinner/dolphin-common/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    device/softwinner/dolphin-common/egl/libMali.so:system/lib/libMali.so

#-------------------------------------------------

#-------------------- secure  -------------------------
# secure storage
PRODUCT_PACKAGES += \
    libsec_storage

#-------------------------------------------------



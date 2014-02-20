#!/bin/sh

# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# start klp-dev
# 886418 = KRT16I
# end klp-dev

ZIP=aosp_hsb-ota
BUILD=none

ROOTDEVICE=hsb
DEVICE=hsb
MANUFACTURER=intel

# NOTE: need to match all the cases in extract-lists.txt
for COMPANY in intel_apache intel_bpl intel_mit intel_obl intel_oblsla intel_oblumg
do
  echo Processing files from $COMPANY
  rm -rf tmp
  FILEDIR=tmp/vendor/$COMPANY/$DEVICE/proprietary
  mkdir -p $FILEDIR
  mkdir -p tmp/vendor/$MANUFACTURER/$ROOTDEVICE
  case $COMPANY in

# SNIP - put contents of generated extract-lists.txt here

  intel_apache)
    TO_EXTRACT="\
            system/etc/firmware/370710010002030d00.seq \
            system/etc/firmware/370710018002030d00.seq \
            system/etc/permissions/com.google.widevine.software.drm.xml \
            system/lib/hw/audio.primary.aosp_hsb.so \
            system/lib/hw/camera.aosp_hsb.so \
            system/lib/hw/hwcomposer.default.so \
            system/lib/libI420colorconvert.so \
            system/lib/libOMXVideoDecoderAVCSecure.so \
            system/lib/libOMXVideoDecoderAVC.so \
            system/lib/libOMXVideoDecoderH263.so \
            system/lib/libOMXVideoDecoderMPEG4.so \
            system/lib/libOMXVideoDecoderWMV.so \
            system/lib/libOMXVideoEncoderH263.so \
            system/lib/libOMXVideoEncoderMPEG4.so \
            system/lib/libpavp.so \
            system/lib/libsecvideoparser.so \
            system/lib/libwrs_omxil_common.so \
            system/lib/libwrs_omxil_core_pvwrapped.so \
            system/vendor/lib/drm/libdrmwvmplugin.so \
            system/vendor/lib/libbt-vendor.so \
            system/vendor/lib/libdrmdecrypt.so \
            system/vendor/lib/libwvdrm_L1.so \
            system/vendor/lib/libwvm.so \
            system/vendor/lib/libWVStreamControlAPI_L1.so \
            "
    ;;
  intel_bpl)
    TO_EXTRACT="\
            system/etc/firmware/msvdx_fw_mfld_DE2.0.bin \
            "
    ;;
  intel_mit)
    TO_EXTRACT="\
            system/lib/libdrm_intel.so \
            system/lib/libdrm.so \
            system/lib/libpciaccess.so \
            system/lib/libva-android.so \
            system/lib/libva.so \
            system/lib/libva-tpi.so \
            "
    ;;
  intel_obl)
    TO_EXTRACT="\
            system/bin/coreu \
            system/bin/curd \
            system/bin/hdcpd \
            system/bin/mediainfo \
            system/etc/ufo.prop \
            system/lib/egl/libGLES_intel7_5.so \
            system/lib/egl/libGLES_intel.so \
            system/lib/hw/gralloc.haswell.so \
            system/lib/hw/hwcomposer.haswell.so \
            system/lib/hw/power.aosp_hsb.so \
            system/lib/i965_drv_video.so \
            system/lib/igfxcmjit32.so \
            system/lib/igfxcmrt32.so \
            system/lib/lib2d.so \
            system/lib/libcoreuclient.so \
            system/lib/libcoreuinterface.so \
            system/lib/libcoreuservice.so \
            system/lib/libgabi++-mfx.so \
            system/lib/libgrallocclient.so \
            system/lib/libgrallocgmm.so \
            system/lib/libgsmgr.so \
            system/lib/libhwcservice.so \
            system/lib/libintelmetadatabuffer.so \
            system/lib/libivp.so \
            system/lib/libjpegdec.so \
            system/lib/libmfxhw32.so \
            system/lib/libmfx_omx_components_hw.so \
            system/lib/libmfx_omx_core.so \
            system/lib/libmixvbp_h264secure.so \
            system/lib/libmixvbp_h264.so \
            system/lib/libmixvbp_mpeg4.so \
            system/lib/libmixvbp.so \
            system/lib/libmixvbp_vc1.so \
            system/lib/libmix_videovpp.so \
            system/lib/libpavpdll.so \
            system/lib/libpcp.so \
            system/lib/libstagefrighthw.so \
            system/lib/libstlport-mfx.so \
            system/lib/libuevent.so \
            system/lib/libva_videodecoder.so \
            system/lib/libva_videoencoder.so \
            "
    ;;
  intel_oblsla)
    TO_EXTRACT="\
            system/lib/libWVCrypto.so \
            "
    ;;
  intel_oblumg)
    TO_EXTRACT="\
            system/bin/disable_houdini \
            system/bin/enable_houdini \
            system/bin/houdini \
            system/lib/arm/check.xml \
            system/lib/arm/cpuinfo \
            system/lib/arm/cpuinfo.neon \
            system/lib/arm/libandroidfw.so \
            system/lib/arm/libandroid_runtime.so \
            system/lib/arm/libandroid.so \
            system/lib/arm/libaudioflinger.so \
            system/lib/arm/libaudioutils.so \
            system/lib/arm/libbcc.so \
            system/lib/arm/libbcinfo.so \
            system/lib/arm/libbinder.so \
            system/lib/arm/libcamera_client.so \
            system/lib/arm/libcamera_metadata.so \
            system/lib/arm/libcommon_time_client.so \
            system/lib/arm/libconnectivitymanager.so \
            system/lib/arm/libc_orig.so \
            system/lib/arm/libcorkscrew.so \
            system/lib/arm/libcrypto.so \
            system/lib/arm/libc.so \
            system/lib/arm/libcutils.so \
            system/lib/arm/libdl.so \
            system/lib/arm/libdrmframework.so \
            system/lib/arm/libdvm.so \
            system/lib/arm/libeffects.so \
            system/lib/arm/libEGL.so \
            system/lib/arm/libETC1.so \
            system/lib/arm/libexpat.so \
            system/lib/arm/libfilterfw.so \
            system/lib/arm/libfilterpack_imageproc.so \
            system/lib/arm/libft2.so \
            system/lib/arm/libgabi++.so \
            system/lib/arm/libgccdemangle.so \
            system/lib/arm/libGLESv1_CM.so \
            system/lib/arm/libGLESv2.so \
            system/lib/arm/libgui.so \
            system/lib/arm/libhardware_legacy.so \
            system/lib/arm/libhardware.so \
            system/lib/arm/libharfbuzz_ng.so \
            system/lib/arm/libharfbuzz.so \
            system/lib/arm/libhwui.so \
            system/lib/arm/libicui18n.so \
            system/lib/arm/libicuuc.so \
            system/lib/arm/libinput.so \
            system/lib/arm/libjnigraphics.so \
            system/lib/arm/libjpeg.so \
            system/lib/arm/libLLVM.so \
            system/lib/arm/liblog.so \
            system/lib/arm/libmedia.so \
            system/lib/arm/libmemtrack.so \
            system/lib/arm/libm_orig.so \
            system/lib/arm/libm.so \
            system/lib/arm/libnativehelper.so \
            system/lib/arm/libnbaio.so \
            system/lib/arm/libnetutils.so \
            system/lib/arm/libnfc_ndef.so \
            system/lib/arm/libOpenMAXAL.so \
            system/lib/arm/libOpenSLES.so \
            system/lib/arm/libpixelflinger.so \
            system/lib/arm/libpng.so \
            system/lib/arm/libpowermanager.so \
            system/lib/arm/libRScpp.so \
            system/lib/arm/libRSDriver.so \
            system/lib/arm/libRS.so \
            system/lib/arm/libselinux.so \
            system/lib/arm/libskia.so \
            system/lib/arm/libsonivox.so \
            system/lib/arm/libspeexresampler.so \
            system/lib/arm/libsqlite.so \
            system/lib/arm/libssl.so \
            system/lib/arm/libstagefright_avc_common.so \
            system/lib/arm/libstagefright_enc_common.so \
            system/lib/arm/libstagefright_foundation.so \
            system/lib/arm/libstagefright_omx.so \
            system/lib/arm/libstagefright.so \
            system/lib/arm/libstagefright_yuv.so \
            system/lib/arm/libstdc++.so \
            system/lib/arm/libstlport.so \
            system/lib/arm/libsurfaceflinger.so \
            system/lib/arm/libsync.so \
            system/lib/arm/libui.so \
            system/lib/arm/libusbhost.so \
            system/lib/arm/libutils.so \
            system/lib/arm/libvideoeditor_core.so \
            system/lib/arm/libvideoeditor_jni.so \
            system/lib/arm/libvideoeditor_osal.so \
            system/lib/arm/libvideoeditorplayer.so \
            system/lib/arm/libvideoeditor_videofilters.so \
            system/lib/arm/libvorbisidec.so \
            system/lib/arm/libwebrtc_audio_coding.so \
            system/lib/arm/libwpa_client.so \
            system/lib/arm/libz.so \
            system/lib/arm/linker \
            system/lib/libhoudini.so \
            "
    ;;

# SNIP

  esac
  echo \ \ Extracting files from OTA package
  for ONE_FILE in $TO_EXTRACT
  do
    echo \ \ \ \ Extracting $ONE_FILE
    unzip -j -o $ZIP $ONE_FILE -d $FILEDIR > /dev/null || echo \ \ \ \ Error extracting $ONE_FILE
  done
  echo \ \ Setting up $COMPANY-specific makefiles
  cp -R $COMPANY/staging/* tmp/vendor/$COMPANY/$DEVICE || echo \ \ \ \ Error copying makefiles
  echo \ \ Setting up shared makefiles
  cp -R root/* tmp/vendor/$MANUFACTURER/$ROOTDEVICE || echo \ \ \ \ Error copying makefiles
  echo \ \ Generating self-extracting script
  SCRIPT=extract-$COMPANY-$DEVICE.sh
  cat PROLOGUE > tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat $COMPANY/COPYRIGHT >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat PART1 >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat $COMPANY/LICENSE >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat PART2 >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  echo tail -n +$(expr 2 + $(cat PROLOGUE $COMPANY/COPYRIGHT PART1 $COMPANY/LICENSE PART2 PART3 | wc -l)) \$0 \| tar zxv >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  cat PART3 >> tmp/$SCRIPT || echo \ \ \ \ Error generating script
  (cd tmp ; tar zc --owner=root --group=root vendor/ >> $SCRIPT || echo \ \ \ \ Error generating embedded tgz)
  chmod a+x tmp/$SCRIPT || echo \ \ \ \ Error generating script
  ARCHIVE=$COMPANY-$DEVICE-$BUILD-$(md5sum < tmp/$SCRIPT | cut -b -8 | tr -d \\n).tgz
  rm -f $ARCHIVE
  echo \ \ Generating final archive
  (cd tmp ; tar --owner=root --group=root -z -c -f ../$ARCHIVE $SCRIPT || echo \ \ \ \ Error archiving script)
  rm -rf tmp
done

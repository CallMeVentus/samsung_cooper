#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

DEVICE=cooper
MANUFACTURER=samsung

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

# EGL
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libEGL_adreno200.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv2_adreno200.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libGLESv1_CM_adreno200.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/egl/libq3dtools_adreno200.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libgsl.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/etc/firmware/yamato_pfp.fw -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/etc/firmware/yamato_pm4.fw -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/

# RIL files
unzip -j -o ../../../${DEVICE}_update.zip system/lib/system/lib/libsecril-client.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libsec-ril.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libril.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/

# Camera
unzip -j -o ../../../${DEVICE}_update.zip system/lib/liboemcamera.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmjpeg.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmmipl.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/

# Sensors
unzip -j -o ../../../${DEVICE}_update.zip system/bin/memsicd -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/

# OMX
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxEvrcEnc.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAacDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxWmvDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxQcelpDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrEnc.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAdpcmDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxEvrcDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxH264Dec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrwbDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxWmaDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxQcelp13Enc.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxMp3Dec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxMpeg4Dec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxVidEnc.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAmrRtpDec.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libOmxAacEnc.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libmm-adspsvc.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_aacdec_sharedlibrary.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_amrdec_sharedlibrary.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_amrenc_sharedlibrary.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_avcdec_sharedlibrary.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_m4vdec_sharedlibrary.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_mp3dec_sharedlibrary.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/
unzip -j -o ../../../${DEVICE}_update.zip system/lib/libomx_sharedlibrary.so -d ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/




(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# All the blobs necessary for cooper

# EGL
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

# RIL
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsecril-client.so:system/lib/libsecril-client.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsec-ril.so:system/lib/libsec-ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:system/lib/libril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libril.so:obj/lib/libril.so

# Camera
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:obj/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so

# Sensors
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/memsicd:system/bin/memsicd

#OMX
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAacDec.so:/system/lib/libOmxAacDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxWmvDec.so:/system/lib/libOmxWmvDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libomx_aacdec_sharedlibrary.so:system/lib/libomx_aacdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libomx_amrdec_sharedlibrary.so:system/lib/libomx_amrdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libomx_amrenc_sharedlibrary.so:system/lib/libomx_amrenc_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libomx_avcdec_sharedlibrary.so:system/lib/libomx_avcdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libomx_m4vdec_sharedlibrary.so:system/lib/libomx_m4vdec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libomx_mp3dec_sharedlibrary.so:system/lib/libomx_mp3dec_sharedlibrary.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libomx_sharedlibrary.so:system/lib/libomx_sharedlibrary.so

EOF

./setup-makefiles.sh

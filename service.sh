#!/system/bin/sh
GCAM_PKG_NAME=com.google.android.GoogleCamera
GCAM_DATA_DIR=/data/data/${GCAM_PKG_NAME}
INTERVAL=120

MODDIR=${0%/*}
cd $MODDIR

while true
do
    sed -i -e 's#<string name="pref_camera_sounds_key">1</string>#<string name="pref_camera_sounds_key">0</string>#g' "${GCAM_DATA_DIR}/shared_prefs/${GCAM_PKG_NAME}_preferences.xml"
    sleep $INTERVAL
done

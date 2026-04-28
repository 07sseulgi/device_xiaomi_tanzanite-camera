#!/bin/bash
# Script to reconstruct the large APK
# Get the directory where the script is located
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

cd "$DIR/proprietary/system/priv-app/MiuiCamera/"
if [ -f MiuiCamera.apk.partaa ]; then
    echo "Combining APK parts..."
    cat MiuiCamera.apk.part* > MiuiCamera.apk
    rm MiuiCamera.apk.part*
    echo "MiuiCamera.apk reconstructed successfully."
else
    echo "APK parts not found or already combined."
fi

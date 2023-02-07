#!/bin/bash

set -o errexit -o pipefail -o noclobber -o nounset

cd "$(dirname "$0")"

# TODO: Check hash

rm -rf gdk-android-jni
curl -L https://github.com/Blockstream/gdk/releases/download/release_0.0.55/gdk-android-jni.tar.gz | tar -xz
rm -rf gdk-iphone
curl -L https://github.com/Blockstream/gdk/releases/download/release_0.0.55/gdk-iphone.tar.gz | tar -xz

# Remove dylib because Xcode prefer it over static lib
rm gdk-iphone/lib/iphone/libgreenaddress.dylib


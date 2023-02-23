#!/bin/bash

sudo apt-get install build-essential git wget curl libfuse2 libfuse3-3 clang cmake ninja-build pkg-config libgtk-3-dev liblzma-dev

curl https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.7.3-stable.tar.xz --output ../downloads/flutter-sdk.tar.xz
# git clone https://github.com/flutter/flutter.git -b stable --depth=1 /opt/environments/flutter

tar xf ../downloads/flutter-sdk.tar.xz -C /opt/environments/

sudo chmod +x ../profile.d/flutter.sh

sudo cp ../profile.d/flutter.sh /etc/profile.d/

source /etc/profile.d/flutter.sh

if [[-x "$flutter"]]
then	
        flutter precache
	echo "----- Successfully configured Flutter environment ------- "
else 
	echo "----- Configuring of flutter environment failed ------- "
fi

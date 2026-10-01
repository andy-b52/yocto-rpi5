#!/bin/sh
# Clones all layers at the exact revisions used for this project
set -e
mkdir -p layers
git clone https://git.openembedded.org/bitbake layers/bitbake
git -C layers/bitbake checkout fae9db3168dbff1b8c76fe9c6726a9687ff97514
git clone https://git.openembedded.org/openembedded-core layers/openembedded-core
git -C layers/openembedded-core checkout ef022bf82d79015802309d14c28b13373ebe53f5
git clone https://git.yoctoproject.org/meta-yocto layers/meta-yocto
git -C layers/meta-yocto checkout 1b132647002eea43a2c7a7f857f63f42dacbc26c
git clone https://github.com/openembedded/meta-openembedded layers/meta-openembedded
git -C layers/meta-openembedded checkout 47d7dbdd10890bbd429bc0cccbe14435c37e5af1
git clone https://git.yoctoproject.org/meta-raspberrypi layers/meta-raspberrypi
git -C layers/meta-raspberrypi checkout f62c67921474370829d24a4fa01ef88543f3906b

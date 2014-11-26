#!/usr/bin/env bash
################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

# Assumes Travis CI os:linux (x86_64)
(cd '/tmp' \
    && wget http://dl.google.com/android/ndk/android-ndk-r9-linux-x86_64.tar.bz2 \
    && tar -xf android-ndk-r9-linux-x86_64.tar.bz2 \
    && mv android-ndk-r9 android-ndk)

export ANDROID_NDK_ROOT="/tmp/android-ndk"
export TOOLCHAIN_PATH="/tmp/android-ndk/toolchains/arm-linux-androideabi-4.8/prebuilt/linux-x86_64/bin"
export TOOLCHAIN_NAME="arm-linux-androideabi-4.8"
export TOOLCHAIN_HOST="arm-linux-androideabi"
export TOOLCHAIN_ARCH="arm"

export ZMQ_ROOT="/tmp/zmq"
git clone https://github.com/zeromq/libzmq $ZMQ_ROOT

export CZMQ_ROOT="/tmp/czmq"
git clone https://github.com/zeromq/czmq $CZMQ_ROOT

export SODIUM_ROOT="/tmp/sodium"
git clone https://github.com/jedisct1/libsodium $SODIUM_ROOT

source ./build.sh

################################################################################
#  THIS FILE IS 100% GENERATED BY ZPROJECT; DO NOT EDIT EXCEPT EXPERIMENTALLY  #
#  Please refer to the README for information about making permanent changes.  #
################################################################################

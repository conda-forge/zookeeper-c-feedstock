#!/bin/bash

set -e
set -x

pushd zookeeper-client/zookeeper-client-c

sed -i -- 's/-Werror//g' Makefile.in

./configure --with-pic --prefix=$PREFIX

make -j${CPU_COUNT}
make install

#!/bin/bash
cp "${BUILD_PREFIX}"/share/gnuconfig/config.* autoconf/

./configure --prefix=${PREFIX}
make
make install

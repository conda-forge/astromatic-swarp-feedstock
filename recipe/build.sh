#!/bin/bash
export CFLAGS="${CFLAGS} -fcommon"
if [ -d autoconf ]; then
  cp "${BUILD_PREFIX}"/share/gnuconfig/config.* autoconf/
fi

./configure --prefix=${PREFIX}
make
make install

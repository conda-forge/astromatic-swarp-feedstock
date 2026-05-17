#!/bin/bash
export CFLAGS="${CFLAGS} -fcommon"
if [ -d autoconf ]; then
  cp "${BUILD_PREFIX}"/share/gnuconfig/config.* autoconf/
fi
if [ ! -f configure ] && [ -f autogen.sh ]; then
  ./autogen.sh
fi

./configure --prefix=${PREFIX} \
  --with-cfitsio-libdir=${PREFIX}/lib \
  --with-cfitsio-incdir=${PREFIX}/include
make
make install

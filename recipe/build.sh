#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./build-aux
export CFLAGS="$CFLAGS -g -O3"

if [[ "$CONDA_BUILD_CROSS_COMPILATION" == 1 ]]; then
  (
    # Make a native build of astbad executable
    mkdir -p native-build
    pushd native-build

    # MACOSX_DEPLOYMENT_TARGET is for the target_platform and not for build_platform
    unset MACOSX_DEPLOYMENT_TARGET

    export CC=$CC_FOR_BUILD
    export host_alias=$build_alias

    cp -r ../configure ../src ../Makefile.in ../wcslib ../cminpack .

    ./configure --prefix=$BUILD_PREFIX --libdir=$BUILD_PREFIX/lib --without-fortran --without-stardocs --without-pthreads --without-topinclude

    popd
  )
  export PATH=`pwd`/native-build:$PATH
fi

./configure --prefix=$PREFIX --libdir=$PREFIX/lib --without-fortran --without-stardocs --without-pthreads --without-topinclude
make
if [[ "${CONDA_BUILD_CROSS_COMPILATION}" != "1" ]]; then
  make check
fi
make install

#!/usr/bin/env bash

CONFIGURE="./configure --prefix=$PREFIX --enable-shared --enable-threads --disable-fortran"

$CONFIGURE --enable-sse --enable-avx
make
make install

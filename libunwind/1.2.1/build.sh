#!/usr/bin/env bash

CONFIGURE="./configure --prefix=$PREFIX --enable-shared --enable-threads"

$CONFIGURE --enable-sse
make
make install

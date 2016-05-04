#!/bin/bash

# install using pip from the whl file provided by Google
TF_VERSION=0.7.1

if [ `uname` == Darwin ]; then
    if [ "$PY_VER" == "2.7" ]; then
        curl https://storage.googleapis.com/tensorflow/mac/tensorflow-$TF_VERSION-cp27-none-any.whl -o tensorflow-$TF_VERSION-cp27-none-any.whl
        pip install tensorflow-$TF_VERSION-cp27-none-any.whl --ignore-installed
    else
        curl https://storage.googleapis.com/tensorflow/mac/tensorflow-$TF_VERSION-cp35-none-any.whl -o tensorflow-$TF_VERSION-cp35-none-any.whl
        pip install tensorflow-$TF_VERSION-cp35-none-any.whl --ignore-installed
    fi
fi

#if [ `uname` == Linux ]; then
#    if [ "$PY_VER" == "2.7" ]; then
#        pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-$TF_VERSION-cp27-none-linux_x86_64.whl
#    else
#        pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-$TF_VERSION-cp34-none-linux_x86_64.whl
#    fi
#fi

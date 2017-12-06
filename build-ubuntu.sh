#!/bin/bash
set -x
docker build -t conda .
docker run -it --rm conda $1

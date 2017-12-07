#!/bin/bash
set -e
OUTPUT=`conda build --python 3.6.3 --output $1`
conda build --python 3.6.3 $1
WHO=`anaconda  whoami`
if [ "$WHO" = "Anonymous User" ]
then
  anaconda login
fi
if [ -z $ANACONDA_USER ]
then
  ANACONDA_USER=carta
fi
anaconda upload -u $ANACONDA_USER $OUTPUT

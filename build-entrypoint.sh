#!/bin/bash
cd /recipes
OUTPUT=`conda build --python 3.6.3 --output $1`
conda build --python 3.6.3 $1
anaconda login 
anaconda upload -u $ANACONDA_USER $OUTPUT 
bash

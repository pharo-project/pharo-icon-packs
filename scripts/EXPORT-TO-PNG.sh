#!/bin/bash
[ -d "../png-scale2.0" ] && rm -rf ../png-scale1.5
./create-png-scale2.0.sh;
mkdir ../png-scale2.0;
cd ../svg;
find . -name "*.png" -exec sh -c 'mv ${1%} ../png-scale2.0/${1%}' _ {} \;

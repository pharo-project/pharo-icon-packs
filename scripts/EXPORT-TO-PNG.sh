#!/bin/bash
[ -d "../png-scale1.0" ] && rm -rf ../png-scale1.0
./create-png-scale1.0.sh;
mkdir ../png-scale1.0;
cd ../svg;
find . -name "*.png" -exec sh -c 'mv ${1%} ../png-scale1.0/${1%}' _ {} \;
cd ..

[ -d "../png-scale1.5" ] && rm -rf ../png-scale1.5
./create-png-scale1.5.sh;
mkdir ../png-scale1.5;
cd ../svg;
find . -name "*.png" -exec sh -c 'mv ${1%} ../png-scale1.5/${1%}' _ {} \;

cd ..
[ -d "../png-scale2.0" ] && rm -rf ../png-scale2.0
./create-png-scale2.0.sh;
mkdir ../png-scale2.0;
cd ../svg;
find . -name "*.png" -exec sh -c 'mv ${1%} ../png-scale2.0/${1%}' _ {} \;

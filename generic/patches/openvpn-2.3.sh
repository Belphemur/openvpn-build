#!/bin/bash
FILENAME=$(basename $0)
DIR=(${FILENAME//-/ })
BASEDIR="$(dirname $0)/"
for patch in "${BASEDIR}"/"${DIR}"/*.diff 
do
	patch -p1 < $patch
done
autoreconf -fi
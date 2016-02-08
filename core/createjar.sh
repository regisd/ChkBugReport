#!/bin/bash

SRC=src/com/sonyericsson/chkbugreport/Module.java
VER=`grep "VERSION = " $SRC | cut -d '"' -f 2` 
REL=`grep "VERSION_CODE = " $SRC | cut -d '"' -f 2` 
#echo VER=$VER REL=$REL

./gradlew build
mv chkbugreport.jar chkbugreport-$VER-$REL.jar || exit 1


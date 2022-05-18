#!/bin/bash

set -e

SDK_URL=https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-11/wasi-sdk-11.0-linux.tar.gz
SDK_FILE=wasi-sdk-11.0-linux.tar.gz
SDK_PATH=$PWD/wasi-sdk
INITIALIZED=.initialized
DOWNLOADER="wget -c"

mkdir -p $SDK_PATH
cd $SDK_PATH

if [ -f $INITIALIZED ];
then
	echo already initialized!
else
	$DOWNLOADER $SDK_URL
	tar -zxvf $SDK_FILE
	touch $INITIALIZED
	echo done initialization!
fi


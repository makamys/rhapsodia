#!/usr/bin/env bash
# Note: this file needs to be run in a unix-like environment. If you're on
# Windows, you can use MSYS, Cygwin or WSL.

pack_name=rhapsodia
engine_version=`grep -oP "\"engineversion.*?\K[0-9]+" assets/matmos/mat_pack.json`-
if [ $engine_version = 0- ]
then
	engine_version=
fi
pack_version=`grep -oP "\"version.*?\K[0-9\.]+" assets/matmos/mat_pack.json`

zip -qFSr $pack_name-$engine_version$pack_version.zip . -x ".*" -x "*.zip" -x "*.sh" -x "*updatejson*"
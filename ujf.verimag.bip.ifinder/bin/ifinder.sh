#!/bin/bash

ROOT=`dirname $0`/..

# not yet completed 
# -- gather jars from an installation directory structure, 
# -- instead of the dev/build directory as below

LOCAL_CP=`ls $ROOT/cli-build/*.jar`

for JAR in $ROOT/cli-lib/*.jar; do
	LOCAL_CP="$LOCAL_CP:$JAR"
done

# avoid * arguments expansion, if any
set -f 
#echo $LOCAL_CP
echo $ROOT
# run
java -cp $LOCAL_CP ujf.verimag.bip.ifinder.tool.IFinder $*

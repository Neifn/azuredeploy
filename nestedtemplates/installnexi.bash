#!/bin/bash
# @@ AVID HEADER - DO NOT EDIT @@
# Copyright 2017 by Avid Technology, Inc.
# @@ AVID HEADER @@

# Usage:
#       installNexis.bash namePrefix __artifactsLocation __artifactsToken nexisBuild cloudPlatform

exec 2>&1
set -ex

namePrefix=$1
__artifactsLocation=$2
__artifactsToken=$3
nexisBuild=$4
cloudPlatform=$5

wget $__artifactsLocation/${nexisBuild}$__artifactsToken -O /tmp/${nexisBuild}

/bin/bash /tmp/${nexisBuild} $namePrefix $cloudPlatform



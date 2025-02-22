#! /bin/bash
# Copyright (C) 2021 Xilinx, Inc
# SPDX-License-Identifier: BSD-3-Clause

set -x
set -e

. /etc/environment
for f in /etc/profile.d/*.sh; do source $f; done

export HOME=/tmp

cd /tmp/xrfdc_build


make embeddedsw
make
make install

rm -rf /tmp/xrfdc_build

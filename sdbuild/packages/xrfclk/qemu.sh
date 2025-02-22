#! /bin/bash
# Copyright (C) 2021 Xilinx, Inc
# SPDX-License-Identifier: BSD-3-Clause

set -x
set -e

. /etc/environment
for f in /etc/profile.d/*.sh; do source $f; done

export HOME=/tmp
export BOARD=${PYNQ_BOARD}

cd /tmp/xrfclk_build

pip3 install .

rm -rf /tmp/xrfclk_build

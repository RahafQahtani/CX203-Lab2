#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2019.1 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Mon Nov 11 16:57:07 +03 2024
# SW Build 2552052 on Fri May 24 14:47:09 MDT 2019
#
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
echo "xelab -wto 0ef3d8fd4f2c4ca2bd88406a42220766 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_fulladder_behav xil_defaultlib.tb_fulladder xil_defaultlib.glbl -log elaborate.log"
xelab -wto 0ef3d8fd4f2c4ca2bd88406a42220766 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_fulladder_behav xil_defaultlib.tb_fulladder xil_defaultlib.glbl -log elaborate.log

#!/bin/bash

BASEDIR="$(cd "$(dirname "$0")" && pwd)/../.."
RESULT="$BASEDIR/result"

TARGET_BL1_NAME=nxp3220

TARGET_BL2_CHIP=nxp3220
TARGET_BL2_BOARD=evb
TARGET_BL2_PMIC=nxe1500
TARGET_BL2_NSIH=nsih_evb_ddr3_800Mhz

TARGET_BL32_LOADADDRESS=0x5F000000
TARGET_BL32_LAUNCHADDRESS=0x5F000000

TARGET_KERNEL_DEFCONFIG=nxp3220_evb_defconfig
TARGET_KERNEL_DTB=nxp3220-evb
TARGET_KERNEL_IMAGE=zImage

TARGET_UBOOT_DEFCONFIG=nxp3220_evb_defconfig

TARGET_BR2_DEFCONFIG=nxp3220_sysv_defconfig

BOOT_IMAGE_SIZE=32M
ROOT_IMAGE_SIZE=1G

CONFIGDIR="$(cd "$(dirname "$0")" && pwd)"/configs

source $CONFIGDIR/build.common.sh

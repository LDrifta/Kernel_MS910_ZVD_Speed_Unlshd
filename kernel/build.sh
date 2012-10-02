#!/bin/sh
#Let's make sure the environment is clean and ready to compile the kernel
echo "Cleaning house!!"
make mrproper
echo "House cleaned, lets build a kernel!!!"
#
# Lets set the kernel defconfig
echo "defconfig = Speed_Unlshd_defconfig"
make ARCH=arm Speed_Unlshd_defconfig
#
# Let's build a kernel
echo "Now compiling kernel, go smoke some pot! ;)"
ARCH=arm CROSS_COMPILE=~/android/1work/esteem/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- make zImage -j4
#
if [ -f arch/arm/boot/zImage ]; then
      echo "Speed_Unleashed has been compiled!!! You can find it in arch/arm/boot/zImage"
else
      echo "Kernel did not compile, please check for errors!!"
fi


#arg=$1

#target=`find arch/arm/boot -name zImage`

#case "target" in
#      "arch/arm/boot/zImage")
#   echo "Speed_Unleashed has been compiled! You can find it in: arch/arm/boot/zImage"
#	;;

#esac

#exit 0

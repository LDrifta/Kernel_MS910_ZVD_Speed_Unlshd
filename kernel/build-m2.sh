# Edit the path to your repo and the path you want your modules installed to.
#
# Let's install our modules to our modules directory
make ARCH=arm CROSS_COMPILE=~/android/1work/esteem/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi- INSTALL_MOD_PATH=~/android/2kernel/Kernel_MS910_ZVD_Speed_Unlshd/modules modules modules_install -j4
#
echo "modules are now installed to your modules directory!"

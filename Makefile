

#This toolchain path is to ve changes accordingly.

export CROSS_COMPILE=/home/arm_toolchain_4.8/bin/
export GCC=arm-linux-androideabi-gcc



CFLAGS=-Wall
LDFLAGS= -fPIE -pie
INCLUDE=-I./include

all: serial

serial:
	$(CROSS_COMPILE)$(GCC) $(CFLAGS) $(LDFLAGS)  -o android-serial-test android-serial-test.c $(INCLUDE)


clean:
	rm -f  android-serial-test

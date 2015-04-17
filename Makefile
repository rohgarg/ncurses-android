JNI_ROOT := $(shell pwd)
NDK_ROOT ?= $(JNI_ROOT)/../android-ndk-r10d
SYS_ROOT := $(NDK_ROOT)/platforms/android-21/arch-arm/
DEBUG ?= 1
CONFIG_FILE := $(JNI_ROOT)/jni/include/config.h

CHMOD := chmod +x
CHDIR := cd

default: build

$(CONFIG_FILE):
	$(CHDIR) jni/ && ./configure --host=arm-linux-androideabi --with-termlib  --without-cxx-binding --without-ada --without-manpages --without-tests --without-libtool --without-gpm CFLAGS="--sysroot=$(SYS_ROOT)" CC="arm-linux-androideabi-gcc" CPPFLAGS="--sysroot=$(SYS_ROOT)" CPP="arm-linux-androideabi-cpp" CXX="arm-linux-androideabi-g++" CXXFLAGS="--sysroot=$(SYS_ROOT)"
	$(CHDIR) jni/include && make
	$(CHDIR) jni/ncurses && make codes.c
	$(CHDIR) jni/ncurses && make comp_captab.c
	$(CHDIR) jni/ncurses && make expanded.c
	$(CHDIR) jni/ncurses && make fallback.c
	$(CHDIR) jni/ncurses && make lib_gen.c
	$(CHDIR) jni/ncurses && make lib_keyname.c
	$(CHDIR) jni/ncurses && make names.c
	$(CHDIR) jni/ncurses && make init_keytry.h
	$(CHDIR) jni/ncurses && make unctrl.c
	$(CHDIR) jni/menu && make ../include/mf_common.h
	$(CHDIR) jni/menu && make ../include/eti.h
	$(CHDIR) jni/menu && make ../include/menu.h
	$(CHDIR) jni/form && make ../include/form.h
	$(CHDIR) jni/panel && make ../include/panel.h
	$(CHDIR) jni/progs && make termsort.c
	$(CHDIR) jni/progs && make transform.h

build: $(CONFIG_FILE)
	$(NDK_ROOT)/ndk-build V=1 NDK_DEBUG=$(DEBUG)

quiet: $(CONFIG_FILE)
	$(NDK_ROOT)/ndk-build NDK_DEBUG=$(DEBUG)

clean:
	rm -rf obj/ libs/

distclean: clean
	$(CHDIR) jni/ && make distclean

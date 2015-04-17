LOCAL_PATH:= $(call my-dir)

##############################################
# Build ncurses
#

include $(CLEAR_VARS)

LOCAL_CFLAGS := -Wall -DHAVE_CONFIG_H

LOCAL_C_INCLUDES := \
        $(LOCAL_PATH)/ \
        $(LOCAL_PATH)/../include

LOCAL_CFLAGS += -DHAVE_CONFIG_H -std=gnu99 -Werror

# to suppress the "pointer of type ‘void *’ used in arithmetic" warning
LOCAL_CFLAGS += -Wno-pointer-arith
LOCAL_CFLAGS += -Wno-sizeof-pointer-memaccess

LOCAL_SRC_FILES := ncurses.c

LOCAL_MODULE := ncurses_test

LOCAL_STATIC_LIBRARIES := libncurses libform libmenu libpanel

include $(BUILD_EXECUTABLE)

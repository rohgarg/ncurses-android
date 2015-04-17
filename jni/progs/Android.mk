LOCAL_PATH:= $(call my-dir)

##############################################
# Build clear
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

LOCAL_SRC_FILES := clear.c

LOCAL_MODULE := clear

LOCAL_STATIC_LIBRARIES := libncurses

include $(BUILD_EXECUTABLE)

##############################################
# Build infocmp
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

LOCAL_SRC_FILES := infocmp.c dump_entry.c

LOCAL_MODULE := infocmp

LOCAL_STATIC_LIBRARIES := libncurses libtinfo

include $(BUILD_EXECUTABLE)

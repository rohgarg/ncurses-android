########################################
############ libpanel.a #################
########################################

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LIBPANEL_SRC_FILES := \
./panel.c \
./p_above.c \
./p_below.c \
./p_bottom.c \
./p_delete.c \
./p_hide.c \
./p_hidden.c \
./p_move.c \
./p_new.c \
./p_replace.c \
./p_show.c \
./p_top.c \
./p_update.c \
./p_user.c \
./p_win.c


LOCAL_SRC_FILES := $(LIBPANEL_SRC_FILES)

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/../ \
                    $(LOCAL_PATH)/../ncurses/ \
                    $(LOCAL_PATH)/../include/

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DLOCALE_ALIAS_PATH="\"/usr/local/share/locale\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -DLIBDIR="\"/system/lib\""

LOCAL_MODULE:= libpanel

include $(BUILD_STATIC_LIBRARY)

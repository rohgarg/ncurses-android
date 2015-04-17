########################################
############ libmenu.a #################
########################################

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

ifdef LOCAL_PATH

LIBMENU_SRC_FILES := \
./m_attribs.c \
./m_cursor.c \
./m_driver.c \
./m_format.c \
./m_global.c \
./m_hook.c \
./m_item_cur.c \
./m_item_nam.c \
./m_item_new.c \
./m_item_opt.c \
./m_item_top.c \
./m_item_use.c \
./m_item_val.c \
./m_item_vis.c \
./m_items.c \
./m_new.c \
./m_opts.c \
./m_pad.c \
./m_pattern.c \
./m_post.c \
./m_req_name.c \
./m_scale.c \
./m_spacing.c \
./m_sub.c \
./m_trace.c \
./m_userptr.c \
./m_win.c


LOCAL_SRC_FILES := $(LIBMENU_SRC_FILES)

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/../ \
                    $(LOCAL_PATH)/../ncurses/ \
                    $(LOCAL_PATH)/../include/

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DLOCALE_ALIAS_PATH="\"/usr/local/share/locale\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -DLIBDIR="\"/system/lib\""

LOCAL_MODULE:= libmenu

include $(BUILD_STATIC_LIBRARY)

endif

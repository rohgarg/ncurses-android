########################################
############ libform.a #################
########################################

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LIBFORM_SRC_FILES := \
                     fld_arg.c \
                     fld_attr.c \
                     fld_current.c \
                     fld_def.c \
                     fld_dup.c \
                     fld_ftchoice.c \
                     fld_ftlink.c \
                     fld_info.c \
                     fld_just.c \
                     fld_link.c \
                     fld_max.c \
                     fld_move.c \
                     fld_newftyp.c \
                     fld_opts.c \
                     fld_pad.c \
                     fld_page.c \
                     fld_stat.c \
                     fld_type.c \
                     fld_user.c \
                     frm_cursor.c \
                     frm_data.c \
                     frm_def.c \
                     frm_driver.c \
                     frm_hook.c \
                     frm_opts.c \
                     frm_page.c \
                     frm_post.c \
                     frm_req_name.c \
                     frm_scale.c \
                     frm_sub.c \
                     frm_user.c \
                     frm_win.c \
                     fty_alnum.c \
                     fty_alpha.c \
                     fty_enum.c \
                     fty_generic.c \
                     fty_int.c \
                     fty_ipv4.c \
                     fty_num.c \
                     fty_regex.c


LOCAL_SRC_FILES := $(LIBFORM_SRC_FILES)

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/../ \
                    $(LOCAL_PATH)/../ncurses/ \
                    $(LOCAL_PATH)/../include/

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DLOCALE_ALIAS_PATH="\"/usr/local/share/locale\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -DLIBDIR="\"/system/lib\""

LOCAL_MODULE:= libform
LOCAL_STATIC_LIBRARIES := libncurses

include $(BUILD_STATIC_LIBRARY)

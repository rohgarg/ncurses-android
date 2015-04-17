########################################
############ libncurses.a ##############
########################################

LOCAL_PATH := $(call my-dir)

LIBNCURSES_SRC_FILES := \
./base/define_key.c \
./base/keybound.c \
./base/key_defined.c \
./base/keyok.c \
./base/legacy_coding.c \
./base/lib_addch.c \
./base/lib_addstr.c \
./base/lib_beep.c \
./base/lib_bkgd.c \
./base/lib_box.c \
./base/lib_chgat.c \
./base/lib_clear.c \
./base/lib_clearok.c \
./base/lib_clrbot.c \
./base/lib_clreol.c \
./base/lib_color.c \
./base/lib_colorset.c \
./base/lib_delch.c \
./base/lib_delwin.c \
./base/lib_dft_fgbg.c \
./base/lib_echo.c \
./base/lib_endwin.c \
./base/lib_erase.c \
./base/lib_flash.c \
./base/lib_freeall.c \
./base/lib_getch.c \
./base/lib_getstr.c \
./base/lib_hline.c \
./base/lib_immedok.c \
./base/lib_inchstr.c \
./base/lib_initscr.c \
./base/lib_insch.c \
./base/lib_insdel.c \
./base/lib_insnstr.c \
./base/lib_instr.c \
./base/lib_isendwin.c \
./base/lib_leaveok.c \
./base/lib_mouse.c \
./base/lib_move.c \
./base/lib_mvwin.c \
./base/lib_newterm.c \
./base/lib_newwin.c \
./base/lib_nl.c \
./base/lib_overlay.c \
./base/lib_pad.c \
./base/lib_printw.c \
./base/lib_redrawln.c \
./base/lib_refresh.c \
./base/lib_restart.c \
./base/lib_scanw.c \
./base/lib_screen.c \
./base/lib_scroll.c \
./base/lib_scrollok.c \
./base/lib_scrreg.c \
./base/lib_set_term.c \
./base/lib_slkatrof.c \
./base/lib_slkatron.c \
./base/lib_slkatr_set.c \
./base/lib_slkatrset.c \
./base/lib_slkattr.c \
./base/lib_slk.c \
./base/lib_slkclear.c \
./base/lib_slkcolor.c \
./base/lib_slkinit.c \
./base/lib_slklab.c \
./base/lib_slkrefr.c \
./base/lib_slkset.c \
./base/lib_slktouch.c \
./base/lib_touch.c \
./base/lib_ungetch.c \
./base/lib_vline.c \
./base/lib_wattroff.c \
./base/lib_wattron.c \
./base/lib_winch.c \
./base/lib_window.c \
./base/memmove.c \
./base/nc_panel.c \
./base/resizeterm.c \
./base/safe_sprintf.c \
./base/tries.c \
./base/use_window.c \
./base/version.c \
./base/vsscanf.c \
./base/wresize.c \
./codes.c \
./comp_captab.c \
./expanded.c \
./fallback.c \
./lib_gen.c \
./lib_keyname.c \
./names.c \
./tinfo/access.c \
./tinfo/add_tries.c \
./tinfo/alloc_ttype.c \
./tinfo/comp_error.c \
./tinfo/comp_hash.c \
./tinfo/db_iterator.c \
./tinfo/doalloc.c \
./tinfo/entries.c \
./tinfo/free_ttype.c \
./tinfo/getenv_num.c \
./tinfo/hashed_db.c \
./tinfo/home_terminfo.c \
./tinfo/init_keytry.c \
./tinfo/lib_acs.c \
./tinfo/lib_baudrate.c \
./tinfo/lib_cur_term.c \
./tinfo/lib_data.c \
./tinfo/lib_has_cap.c \
./tinfo/lib_kernel.c \
./tinfo/lib_longname.c \
./tinfo/lib_napms.c \
./tinfo/lib_options.c \
./tinfo/lib_print.c \
./tinfo/lib_raw.c \
./tinfo/lib_setup.c \
./tinfo/lib_termcap.c \
./tinfo/lib_termname.c \
./tinfo/lib_tgoto.c \
./tinfo/lib_ti.c \
./tinfo/lib_tparm.c \
./tinfo/lib_tputs.c \
./tinfo/lib_ttyflags.c \
./tinfo/name_match.c \
./tinfo/read_entry.c \
./tinfo/read_termcap.c \
./tinfo/setbuf.c \
./tinfo/strings.c \
./tinfo/trim_sgr0.c \
./tinfo/use_screen.c \
./trace/lib_trace.c \
./trace/varargs.c \
./trace/visbuf.c \
./tty/hardscroll.c \
./tty/hashmap.c \
./tty/lib_mvcur.c \
./tty/lib_tstp.c \
./tty/lib_twait.c \
./tty/lib_vidattr.c \
./tty/tty_update.c \
./unctrl.c

include $(CLEAR_VARS)

LOCAL_SRC_FILES := $(LIBNCURSES_SRC_FILES)

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/../ \
                    $(LOCAL_PATH)/../include/ \
                    $(LOCAL_PATH)/tty/

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DLOCALE_ALIAS_PATH="\"/usr/local/share/locale\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -DLIBDIR="\"/system/lib\""

LOCAL_MODULE:= libncurses

include $(BUILD_STATIC_LIBRARY)


########################################
############## libtinfo.a ##############
########################################

include $(CLEAR_VARS)

LIBTINFO_SRC_FILES := \
./tinfo/access.c \
./tinfo/add_tries.c \
./tinfo/alloc_ttype.c \
./codes.c \
./comp_captab.c \
./tinfo/comp_error.c \
./tinfo/comp_hash.c \
./tinfo/db_iterator.c \
./tinfo/doalloc.c \
./tinfo/entries.c \
./fallback.c \
./tinfo/free_ttype.c \
./tinfo/getenv_num.c \
./tinfo/home_terminfo.c \
./tinfo/init_keytry.c \
./tinfo/lib_acs.c \
./tinfo/lib_baudrate.c \
./tinfo/lib_cur_term.c \
./tinfo/lib_data.c \
./tinfo/lib_has_cap.c \
./tinfo/lib_kernel.c \
./lib_keyname.c \
./tinfo/lib_longname.c \
./tinfo/lib_napms.c \
./tinfo/lib_options.c \
./tinfo/lib_raw.c \
./tinfo/lib_setup.c \
./tinfo/lib_termcap.c \
./tinfo/lib_termname.c \
./tinfo/lib_tgoto.c \
./tinfo/lib_ti.c \
./tinfo/lib_tparm.c \
./tinfo/lib_tputs.c \
./trace/lib_trace.c \
./trace/lib_traceatr.c \
./trace/lib_tracebits.c \
./trace/lib_tracechr.c \
./tinfo/lib_ttyflags.c \
./tty/lib_twait.c \
./tinfo/name_match.c \
./names.c \
./tinfo/read_entry.c \
./tinfo/read_termcap.c \
./tinfo/setbuf.c \
./tinfo/strings.c \
./trace/trace_buf.c \
./trace/trace_tries.c \
./base/tries.c \
./tinfo/trim_sgr0.c \
./unctrl.c \
./trace/visbuf.c \
./tinfo/alloc_entry.c \
./tinfo/captoinfo.c \
./tinfo/comp_expand.c \
./tinfo/comp_parse.c \
./tinfo/comp_scan.c \
./tinfo/parse_entry.c \
./tinfo/write_entry.c \
./base/define_key.c \
./tinfo/hashed_db.c \
./base/key_defined.c \
./base/keybound.c \
./base/keyok.c \
./base/version.c

LOCAL_SRC_FILES := $(LIBTINFO_SRC_FILES)

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/../ \
                    $(LOCAL_PATH)/../include/ \
                    $(LOCAL_PATH)/tty/

LOCAL_CFLAGS += -DHAVE_CONFIG_H -DLOCALE_ALIAS_PATH="\"/usr/local/share/locale\"" -DLOCALEDIR="\"/usr/local/share/locale\"" -DLIBDIR="\"/system/lib\""

LOCAL_MODULE:= libtinfo

include $(BUILD_STATIC_LIBRARY)

/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ***   To edit the content of this header, modify the corresponding
 ***   source file (e.g. under external/kernel-headers/original/) then
 ***   run bionic/libc/kernel/tools/update_all.py
 ***
 ***   Any manual change here will be lost the next time this script will
 ***   be run. You've been warned!
 ***
 ****************************************************************************
 ****************************************************************************/
#ifndef __MTKFB_H
#define __MTKFB_H
#include "mtkfb_info.h"
#define MTK_FB_NO_ION_FD ((int)(~0U>>1))
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTK_FB_NO_USE_LAEYR_ID ((int)(~0U>>1))
#define FBCAPS_GENERIC_MASK (0x00000fff)
#define FBCAPS_LCDC_MASK (0x00fff000)
#define FBCAPS_PANEL_MASK (0xff000000)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define FBCAPS_MANUAL_UPDATE (0x00001000)
#define FBCAPS_SET_BACKLIGHT (0x01000000)
#define MTKFB_ERROR_IS_EARLY_SUSPEND (0x12000000)
#define MTK_IOW(num, dtype) _IOW('O', num, dtype)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTK_IOR(num, dtype) _IOR('O', num, dtype)
#define MTK_IOWR(num, dtype) _IOWR('O', num, dtype)
#define MTK_IO(num) _IO('O', num)
#define MTKFB_QUEUE_OVERLAY_CONFIG MTK_IOW(137, struct fb_overlay_config)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_SET_OVERLAY_LAYER MTK_IOW(0, struct fb_overlay_layer)
#define MTKFB_TRIG_OVERLAY_OUT MTK_IO(1)
#define MTKFB_SET_VIDEO_LAYERS MTK_IOW(2, struct fb_overlay_layer)
#define MTKFB_CAPTURE_FRAMEBUFFER MTK_IOW(3, unsigned long)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_CONFIG_IMMEDIATE_UPDATE MTK_IOW(4, unsigned long)
#define MTKFB_SET_MULTIPLE_LAYERS MTK_IOW(5, struct fb_overlay_layer)
#define MTKFB_REGISTER_OVERLAYBUFFER MTK_IOW(6, struct fb_overlay_buffer_info)
#define MTKFB_UNREGISTER_OVERLAYBUFFER MTK_IOW(7, unsigned int)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_SET_ORIENTATION MTK_IOW(8, unsigned long)
#define MTKFB_FBLAYER_ENABLE MTK_IOW(9, unsigned int)
#define MTKFB_LOCK_FRONT_BUFFER MTK_IO(10)
#define MTKFB_UNLOCK_FRONT_BUFFER MTK_IO(11)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_POWERON MTK_IO(12)
#define MTKFB_POWEROFF MTK_IO(13)
#define MTKFB_PREPARE_OVERLAY_BUFFER MTK_IOW(14, struct fb_overlay_buffer)
#define MTKFB_SET_COMPOSING3D MTK_IOW(15, unsigned long)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_SET_S3D_FTM MTK_IOW(16, unsigned long)
#define MTKFB_GET_DEFAULT_UPDATESPEED MTK_IOR(17, unsigned long)
#define MTKFB_GET_CURR_UPDATESPEED MTK_IOR(18, unsigned long)
#define MTKFB_CHANGE_UPDATESPEED MTK_IOW(19, unsigned long)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_GET_INTERFACE_TYPE MTK_IOR(20, unsigned long)
#define MTKFB_GET_POWERSTATE MTK_IOR(21, unsigned long)
#define MTKFB_GET_DISPLAY_IF_INFORMATION MTK_IOR(22, mtk_dispif_info_t)
#define MTKFB_AEE_LAYER_EXIST MTK_IOR(23, unsigned long)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_GET_OVERLAY_LAYER_INFO MTK_IOR(24, struct fb_overlay_layer_info)
#define MTKFB_FACTORY_AUTO_TEST MTK_IOR(25, unsigned long)
#define MTKFB_GET_FRAMEBUFFER_MVA MTK_IOR(26, unsigned int)
#define MTKFB_SLT_AUTO_CAPTURE MTK_IOWR(27, struct fb_slt_catpure)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_META_RESTORE_SCREEN MTK_IOW(101, unsigned long)
#define MTKFB_ERROR_INDEX_UPDATE_TIMEOUT MTK_IO(103)
#define MTKFB_ERROR_INDEX_UPDATE_TIMEOUT_AEE MTK_IO(104)
#define MTKFB_GETVFRAMEPHYSICAL MTK_IOW(41, unsigned long)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_WAIT_OVERLAY_READY MTK_IO(42)
#define MTKFB_GET_OVERLAY_LAYER_COUNT MTK_IOR(43, unsigned long)
#define MTKFB_GET_VIDEOLAYER_SIZE MTK_IOR(44, struct fb_overlay_layer)
#define MTKFB_CAPTURE_VIDEOBUFFER MTK_IOW(45, unsigned long)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_TV_POST_VIDEO_BUFFER MTK_IOW(46, unsigned long)
#define MTKFB_TV_LEAVE_VIDEO_PLAYBACK_MODE MTK_IOW(47, unsigned long)
#define MTKFB_IS_TV_CABLE_PLUG_IN MTK_IOW(48, unsigned long)
#define MTKFB_BOOTANIMATION MTK_IO(49)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_GETFPS MTK_IOW(50, unsigned long)
#define MTKFB_VSYNC MTK_IO(51)
#define MTKFB_FM_NOTIFY_FREQ MTK_IOW(52, unsigned long)
#define MTKFB_RESET_UPDATESPEED MTK_IO(53)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define MTKFB_SET_UI_LAYER_ALPHA MTK_IOW(54, unsigned long)
#define MTKFB_SET_UI_LAYER_SRCKEY MTK_IOW(55, unsigned long)
#define MTKFB_GET_MAX_DISPLAY_COUNT MTK_IOR(56, unsigned int)
#define MTKFB_SET_FB_LAYER_SECURE MTK_IOW(57, int)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
typedef enum {
 MTK_FB_ORIENTATION_0 = 0,
 MTK_FB_ORIENTATION_90 = 1,
 MTK_FB_ORIENTATION_180 = 2,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 MTK_FB_ORIENTATION_270 = 3,
} MTK_FB_ORIENTATION;
typedef enum {
 MTK_FB_TV_SYSTEM_NTSC = 0,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 MTK_FB_TV_SYSTEM_PAL = 1,
} MTK_FB_TV_SYSTEM;
typedef enum {
 MTK_FB_TV_FMT_RGB565 = 0,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 MTK_FB_TV_FMT_YUV420_SEQ = 1,
 MTK_FB_TV_FMT_UYUV422 = 2,
 MTK_FB_TV_FMT_YUV420_BLK = 3,
} MTK_FB_TV_SRC_FORMAT;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
typedef enum {
 LAYER_NORMAL_BUFFER = 0,
 LAYER_SECURE_BUFFER = 1,
 LAYER_PROTECTED_BUFFER = 2,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 LAYER_SECURE_BUFFER_WITH_ALIGN = 0x10001,
} MTK_FB_OVL_LAYER_SECURE_MODE;
typedef struct _disp_dfo_item {
 char name[32];
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 int value;
} disp_dfo_item_t;
struct fb_slt_catpure {
 MTK_FB_FORMAT format;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 volatile char *outputBuffer;
 unsigned int wdma_width;
 unsigned int wdma_height;
};
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
struct fb_scale {
 unsigned int xscale, yscale;
};
struct fb_frame_offset {
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int idx;
 unsigned long offset;
};
struct fb_update_window {
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int x, y;
 unsigned int width, height;
};
typedef enum {
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 LAYER_2D = 0,
 LAYER_3D_SBS_0 = 0x1,
 LAYER_3D_SBS_90 = 0x2,
 LAYER_3D_SBS_180 = 0x3,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 LAYER_3D_SBS_270 = 0x4,
 LAYER_3D_TAB_0 = 0x10,
 LAYER_3D_TAB_90 = 0x20,
 LAYER_3D_TAB_180 = 0x30,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 LAYER_3D_TAB_270 = 0x40,
} MTK_FB_LAYER_TYPE;
typedef enum {
 DISP_DIRECT_LINK_MODE,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 DISP_DECOUPLE_MODE
} MTK_DISP_MODE;
struct fb_overlay_mode {
 MTK_DISP_MODE mode;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
typedef enum {
 DISP_SESSION_LCM = 1 << 0,
 DISP_SESSION_MEM = 1 << 1,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 DISP_SESSION_WFD = 1 << 2,
 DISP_SESSION_MHL = 1 << 3,
 DISP_SESSION_LCM1 = 1 << 4,
 DISP_SESSION_MEM1 = 1 << 5,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 SESSION_MASK = 0xff & ~(1 << 6)
} MTK_DISP_SESSION;
struct fb_overlay_session {
 unsigned int session;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
struct fb_overlay_decouple {
 MTK_DISP_MODE mode;
 unsigned int session;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
struct fb_overlay_buffer {
 int layer_id;
 unsigned int layer_en;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 int ion_fd;
 unsigned int cache_sync;
 unsigned int index;
 int fence_fd;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
struct fb_overlay_layer {
 unsigned int layer_id;
 unsigned int layer_enable;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 void *src_base_addr;
 void *src_phy_addr;
 unsigned int src_direct_link;
 MTK_FB_FORMAT src_fmt;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int src_use_color_key;
 unsigned int src_color_key;
 unsigned int src_pitch;
 unsigned int src_offset_x, src_offset_y;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int src_width, src_height;
 unsigned int tgt_offset_x, tgt_offset_y;
 unsigned int tgt_width, tgt_height;
 MTK_FB_ORIENTATION layer_rotation;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 MTK_FB_LAYER_TYPE layer_type;
 MTK_FB_ORIENTATION video_rotation;
 unsigned int isTdshp;
 int next_buff_idx;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 int identity;
 int connected_type;
 unsigned int security;
 unsigned int alpha_enable;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int alpha;
 int fence_fd;
 int ion_fd;
};
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
struct fb_overlay_config {
 int fence;
 int time;
 struct fb_overlay_layer layers[4];
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
struct fb_overlay_buffer_info {
 unsigned int src_vir_addr;
 unsigned int size;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
struct fb_overlay_layer_info {
 unsigned int layer_id;
 unsigned int layer_enabled;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int curr_en;
 unsigned int next_en;
 unsigned int hw_en;
 int curr_idx;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 int next_idx;
 int hw_idx;
 int curr_identity;
 int next_identity;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 int hw_identity;
 int curr_conn_type;
 int next_conn_type;
 int hw_conn_type;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 MTK_FB_ORIENTATION layer_rotation;
};
struct fb_post_video_buffer {
 void *phy_addr;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 void *vir_addr;
 MTK_FB_TV_SRC_FORMAT format;
 unsigned int width, height;
};
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#endif


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
#ifndef __MTKFB_INFO_H__
#define __MTKFB_INFO_H__
#ifdef __cplusplus
#endif
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 typedef enum {
 DISPIF_TYPE_DBI = 0,
 DISPIF_TYPE_DPI,
 DISPIF_TYPE_DSI,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 DISPIF_TYPE_DPI0,
 DISPIF_TYPE_DPI1,
 DISPIF_TYPE_DSI0,
 DISPIF_TYPE_DSI1,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 HDMI,
 HDMI_SMARTBOOK,
 MHL
 } MTKFB_DISPIF_TYPE;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 typedef enum {
 MTKFB_DISPIF_PRIMARY_LCD = 0,
 MTKFB_DISPIF_HDMI,
 MTKFB_MAX_DISPLAY_COUNT
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 } MTKFB_DISPIF_DEVICE_TYPE;
 typedef enum {
 DISPIF_FORMAT_RGB565 = 0,
 DISPIF_FORMAT_RGB666,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 DISPIF_FORMAT_RGB888
 } MTKFB_DISPIF_FORMAT;
 typedef enum {
 DISPIF_MODE_VIDEO = 0,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 DISPIF_MODE_COMMAND
 } MTKFB_DISPIF_MODE;
 typedef struct mtk_dispif_info {
 unsigned int display_id;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int isHwVsyncAvailable;
 MTKFB_DISPIF_TYPE displayType;
 unsigned int displayWidth;
 unsigned int displayHeight;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int displayFormat;
 MTKFB_DISPIF_MODE displayMode;
 unsigned int vsyncFPS;
 unsigned int physicalWidth;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 unsigned int physicalHeight;
 unsigned int isConnected;
 unsigned int lcmOriginalWidth;
 unsigned int lcmOriginalHeight;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 } mtk_dispif_info_t;
#define MAKE_MTK_FB_FORMAT_ID(id, bpp) (((id) << 8) | (bpp))
 typedef enum {
 MTK_FB_FORMAT_UNKNOWN = 0,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 MTK_FB_FORMAT_RGB565 = MAKE_MTK_FB_FORMAT_ID(1, 2),
 MTK_FB_FORMAT_RGB888 = MAKE_MTK_FB_FORMAT_ID(2, 3),
 MTK_FB_FORMAT_BGR888 = MAKE_MTK_FB_FORMAT_ID(3, 3),
 MTK_FB_FORMAT_ARGB8888 = MAKE_MTK_FB_FORMAT_ID(4, 4),
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 MTK_FB_FORMAT_ABGR8888 = MAKE_MTK_FB_FORMAT_ID(5, 4),
 MTK_FB_FORMAT_YUV422 = MAKE_MTK_FB_FORMAT_ID(6, 2),
 MTK_FB_FORMAT_XRGB8888 = MAKE_MTK_FB_FORMAT_ID(7, 4),
 MTK_FB_FORMAT_XBGR8888 = MAKE_MTK_FB_FORMAT_ID(8, 4),
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 MTK_FB_FORMAT_UYVY = MAKE_MTK_FB_FORMAT_ID(9, 2),
 MTK_FB_FORMAT_YUV420_P = MAKE_MTK_FB_FORMAT_ID(10, 2),
 MTK_FB_FORMAT_YUY2 = MAKE_MTK_FB_FORMAT_ID(11, 2),
 MTK_FB_FORMAT_BPP_MASK = 0xFF,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
 } MTK_FB_FORMAT;
#define GET_MTK_FB_FORMAT_BPP(f) ((f) & MTK_FB_FORMAT_BPP_MASK)
#ifdef __cplusplus
#endif
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#endif


LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := sud
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := sqlite3 libcutils libc
LOCAL_CFLAGS := -DRUN_AS_DAEMON
LOCAL_C_INCLUDES := $(LOCAL_PATH)/sqlite3
LOCAL_SRC_FILES := sud/su.c sud/activity.c sud/db.c sud/utils.c sud/daemon.c sud/pts.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := su
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := sqlite3 libcutils libc
LOCAL_C_INCLUDES := $(LOCAL_PATH)/sqlite3
LOCAL_SRC_FILES := su/su.c su/activity.c su/db.c su/utils.c su/daemon.c su/pts.c
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_MODULE := reboot
LOCAL_LDFLAGS := -llog
LOCAL_STATIC_LIBRARIES := sqlite3
LOCAL_C_INCLUDES := $(LOCAL_PATH)/sqlite3
LOCAL_SRC_FILES := reboot/reboot.c
include $(BUILD_EXECUTABLE)


include $(CLEAR_VARS)

LOCAL_MODULE := sqlite3
LOCAL_SRC_FILES := sqlite3/sqlite3.c
LOCAL_CFLAGS := -DSQLITE_OMIT_LOAD_EXTENSION
include $(BUILD_STATIC_LIBRARY)

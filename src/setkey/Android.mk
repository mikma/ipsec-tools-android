LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	parse.c \
	setkey.c \
	token.c

LOCAL_C_INCLUDES += \
	$(NDK_PROJECT_PATH) \
	$(NDK_PROJECT_PATH)/src/include-glibc \
	$(NDK_PROJECT_PATH)/src/libipsec \
	$(LOCAL_PATH)


LOCAL_SHARED_LIBRARIES += libipsec

LOCAL_CFLAGS := -DANDROID_CHANGES -DHAVE_CONFIG_H

LOCAL_MODULE := setkey

include $(BUILD_EXECUTABLE)

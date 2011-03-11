LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	ipsec_dump_policy.c \
	ipsec_get_policylen.c \
	ipsec_strerror.c \
	key_debug.c \
	pfkey.c \
	pfkey_dump.c \
	policy_parse.c \
	policy_token.c

LOCAL_C_INCLUDES += \
	$(NDK_PROJECT_PATH) \
	$(NDK_PROJECT_PATH)/src/include-glibc \
	$(LOCAL_PATH)

LOCAL_SHARED_LIBRARIES += libclib

ifneq ($(TARGET_SIMULATOR),true)
        LOCAL_SHARED_LIBRARIES += libdl
endif

LOCAL_CFLAGS := -DANDROID_CHANGES -DHAVE_CONFIG_H

LOCAL_MODULE := libipsec

include $(BUILD_SHARED_LIBRARY)

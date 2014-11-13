LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := scrypt

LOCAL_CFLAGS += -DHAVE_CONFIG_H
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../src/main/include

LOCAL_SRC_FILES := ../src/main/c/sha256.c ../src/main/c/scrypt_jni.c ../src/main/c/crypto_scrypt-nosse.c

include $(BUILD_SHARED_LIBRARY)

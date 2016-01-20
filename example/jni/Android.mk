LOCAL_PATH := $(call my-dir)
# C++ full library
# =======================================================
## Import SLAM JNI
include $(CLEAR_VARS)

LOCAL_MODULE    := libjni_example

JNI_CC := jni_example.cpp

LOCAL_SRC_FILES := $(foreach jni_cxx_src, $(JNI_CC), $(jni_cxx_src))

# glog start
glog_INCLUDE_PATHS += $(LOCAL_PATH)/../..
LOCAL_SRC_FILES += ../../glog/logging.cc
# glog end

LOCAL_C_INCLUDES := $(glog_INCLUDE_PATHS)

LOCAL_CPPFLAGS += -pthread -fPIC -fexceptions -frtti -std=c++11
LOCAL_LDLIBS += -lm -llog

TARGET_OUT='jniLibs/$(TARGET_ARCH_ABI)'

#include $(BUILD_SHARED_LIBRARY)
include $(BUILD_EXECUTABLE)

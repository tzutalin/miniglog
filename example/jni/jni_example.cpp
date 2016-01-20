#include <jni.h>
#include <glog/logging.h>

#ifdef __cplusplus
extern "C" {
#endif

//
// Define COM_PACKAGE_CLASS here if you want to link to java class
//
#define JNI_METHOD(METHOD_NAME) \
    Java_COM_PACKAGE_CLASS_##METHOD_NAME

JNIEXPORT void JNICALL JNI_METHOD(jniNativeClassInit)
(JNIEnv *_env, jclass _this) {
    
    
}


#ifdef __cplusplus
} // extern "C"
#endif // __cplusplus


int main() {
    google::InitGoogleLogging("Test");
    LOG(INFO) << "Dump log test";
    return 0;
}

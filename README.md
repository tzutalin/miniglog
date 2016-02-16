# miniglog

A logging C++ library based on the miniglog library found in [ceres-solver](https://android.googlesource.com/platform/external/ceres-solver/+/refs/heads/lollipop-cts-release/internal/ceres/miniglog/glog)

Let people include and build c++ logging quickly

### Benefits
* Very small (less than 1000 LOC)
* Easy to use
* No 3rd-party dependencies
* Cross-platform
* Same interface as glog

### Grab the source

    $ cd ~
    $ git clone https://github.com/tzutalin/miniglog.git

### Build
* Ubuntu/Mac/Windows

   `mkdir build; cd build`
   `cmake -D CMAKE_INSTALL_PREFIX=. ..; make -j8; make install`

   Build and run test sample
   `cd ../example/test/;cmake .;make`
   `./test`

* Android build
   `cd example`
   `ndk-build`

### Usage

LOG Level: FATAL ERROR WARNING INFO

```
    // Log level is INFO
    LOG(INFO) << "Dump log test";
```

You can refer to the sampe code

Android example and Android.mk: You can refer to

[./example/jni](./example/jni)


#!/bin/bash
# tzu.ta.lin@gmail.com - 2016
ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo '===================================================='
echo '============== Build Destkop version ==============='
echo '===================================================='


if [ -x "$(command -v ninja)" ]; then
    mkdir build; cd build
    cmake -G Ninja -D CMAKE_INSTALL_PREFIX=. ..; ninja;ninja install
    cd ../example/test/; cmake -G Ninja .;ninja
    ./test
else
    echo %ERRORLEVEL%'No Ninja. Try to use cmake'
    if [ -x "$(command -v cmake)" ]; then
        mkdir build; cd build
        cmake -D CMAKE_INSTALL_PREFIX=. ..; make -j8; make install
        cd ../example/test/; cmake .;make
        ./test
    else
        echo %ERRORLEVEL%'No CMake'
    fi
fi

echo '===================================================='
echo '============== Build Android version ==============='
echo '===================================================='
if [ -x "$(command -v ndk-build)" ]; then
    cd "${ABSOLUTE_PATH}/example"
    ndk-build
else
    echo 'Building andriod-ndk needs to set up Android NDK'
fi

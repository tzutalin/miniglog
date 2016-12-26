cmake_minimum_required(VERSION 3.4.1)

project(miniglog)

set(TARGET_SRC glog/logging.cc)
set(TARGET_HDR glog/logging.h)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
add_library(miniglog SHARED ${TARGET_SRC} ${TARGET_HDR})

# when other libraries or executables link to <target>.
target_include_directories(miniglog PUBLIC
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
    $<INSTALL_INTERFACE:include>  # <prefix>/include
    )

#----------------------------------------------------------------------------
# Install instructions.
#----------------------------------------------------------------------------
install(
    TARGETS miniglog
    RUNTIME DESTINATION bin
    LIBRARY DESTINATION lib
    )

install(FILES glog/logging.h DESTINATION include/glog)

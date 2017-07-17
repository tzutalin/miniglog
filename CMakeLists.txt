# Android should use 3.1 or above
cmake_minimum_required(VERSION 3.1)


IF(NOT PROJECT_NAME)
  project(miniglog)
ENDIF(NOT PROJECT_NAME)

set(TARGET_SRC ${CMAKE_CURRENT_LIST_DIR}/glog/logging.cc)
set(TARGET_HDR ${CMAKE_CURRENT_LIST_DIR}/glog/logging.h)

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

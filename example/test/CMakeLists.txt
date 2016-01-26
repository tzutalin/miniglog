cmake_minimum_required(VERSION 2.8)
project(test)

include_directories("../../glog")

file(GLOB test_dep
    "*.h"
    "*.cpp"
)

set(HEADER_FILES "../../glog")

add_executable( test ${test_dep} ${HEADER_FILES}/logging.h "../../glog/logging.h" "../../glog/logging.cc")

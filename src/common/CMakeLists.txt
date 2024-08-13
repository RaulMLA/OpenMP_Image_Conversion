add_library(common progargs.cpp bitmap_header.cpp pixel.cpp histogram.cpp file_error.cpp normalized_pixel.cpp normalized_pixel.hpp)

find_package(OpenMP)
if(OpenMP_CXX_FOUND)
    target_link_libraries(common PUBLIC OpenMP::OpenMP_CXX)
endif()

target_include_directories(common PUBLIC ..)
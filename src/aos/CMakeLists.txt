add_library(aos bitmap_aos.cpp)
find_package(OpenMP)
if(OpenMP_CXX_FOUND)
    target_link_libraries(aos PUBLIC OpenMP::OpenMP_CXX common)
endif()

target_include_directories(aos PUBLIC ..)

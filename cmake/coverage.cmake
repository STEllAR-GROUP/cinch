#--------------------------------------------------------------------------#
# Global options 
#--------------------------------------------------------------------------#

option(ENABLE_COVERAGE_BUILD "Do a coverage build" OFF)
if(ENABLE_COVERAGE_BUILD)
    message(STATUS "Enabling coverage build")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} --coverage -O0")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage -O0")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} --coverage")
    set(CMAKE_SHARED_LINKER_FLAGS "${CMAKE_SHARED_LINKER_FLAGS} --coverage")
endif()
option(BUILD_SHARED_LIBS "Build shared libs" ON)
if (NOT DEFINED LIBDIR)
    include(GNUInstallDirs)
    set(LIBDIR "${CMAKE_INSTALL_LIBDIR}")
endif(NOT DEFINED LIBDIR)



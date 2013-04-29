
PROJECT(cgr_loclization)
cmake_minimum_required(VERSION 2.6)

set (arch ${})

#set (CMAKE_C_COMPILER icc)

message (STATUS "Compiling CGR sources...")
message (STATUS "Compilers found: ${CMAKE_CXX_COMPILER_LIST}" )
message (STATUS "Using compiler: ${CMAKE_CXX_COMPILER}" )
message (STATUS "Build Type: ${CMAKE_BUILD_TYPE}")
message (STATUS "Arch: ${CMAKE_SYSTEM_PROCESSOR}")

set (CMAKE_CXX_FLAGS "-mmmx -msse -msse2 -msse4.1 -save-temps")

set(ROS_ROOT $ENV{ROS_ROOT})

IF( ROS_ROOT )
  message (STATUS "ROS installation detected.")
  include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
  rosbuild_init()
  rosbuild_gensrv()
  rosbuild_genmsg()
ELSE( ROS_ROOT )
  message (STATUS "ROS not installed.")
ENDIF( ROS_ROOT )


SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

set (QT_USE_QTNETWORK true)
set (QT_USE_QTOPENGL true)

#===================================================================================
#OpenKinect Library
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/src/kinect/modules")
##add_subdirectory (src/kinect)
include_directories(${PROJECT_SOURCE_DIR}/src/kinect/include)
include_directories(${PROJECT_SOURCE_DIR}/src/kinect/lib)
add_subdirectory(${PROJECT_SOURCE_DIR}/src/kinect/lib)
#===================================================================================

find_package ( Qt4 REQUIRED )
find_package(OpenGL REQUIRED)
find_package(Lua51 REQUIRED)
find_package(USB REQUIRED)

include ( ${QT_USE_FILE} )

FIND_PATH( GLEW_INCLUDE_PATH GL/glew.h
    /usr/include
    /usr/local/include
    /sw/include
    /opt/local/include
    DOC "The directory where GL/glew.h resides")

FIND_LIBRARY( GLEW_LIBRARY
  NAMES GLEW glew
  PATHS
  /usr/lib64
  /usr/lib 
  /usr/local/lib64
  /usr/local/lib
  /sw/lib
  /opt/local/lib
  DOC "The GLEW library")


include_directories(${PROJECT_BINARY_DIR})
include_directories(${PROJECT_SOURCE_DIR})
include_directories(${PROJECT_SOURCE_DIR}/src)
include_directories(${PROJECT_SOURCE_DIR}/src/shared/math)
include_directories(${PROJECT_SOURCE_DIR}/src/shared/util)
include_directories(${PROJECT_SOURCE_DIR}/src/map)
include_directories(${PROJECT_SOURCE_DIR}/src/cgr)
include_directories(${PROJECT_SOURCE_DIR}/src/fspf)

include_directories(${LUA_INCLUDE_DIR})
include_directories(${USB_INCLUDE_DIR})

#set (libs roslib popt pthread glut ${OPENGL_LIBRARY} ${GLEW_LIBRARY} ${LUA_LIBRARIES} rt)  
set (libs popt pthread glut ${OPENGL_LIBRARY} ${GLEW_LIBRARY} ${LUA_LIBRARIES} rt)  

set (SHARED_SRCS
  src/shared/math/gvector.h
  src/shared/math/gvector.cpp
  src/shared/math/geomalgo.h
  src/shared/math/geometry.h
  src/shared/util/proghelp.cc
  src/shared/util/terminal_utils.cpp
  src/shared/util/configreader.cpp
  src/shared/util/watch_files.cpp
)

set (MAP_SRCS
  src/map/vector_map.cpp
)

set (CGR_SRCS
  src/cgr/vectorparticlefilter.cpp
)

set (FSPF_SRCS
  src/fspf/plane_filtering.cpp
  src/fspf/plane_polygon.cpp
  src/fspf/grahams_scan.cpp
)

qt4_wrap_cpp(GUI_MOC_SRCS
  src/gui/vector_display.h
)

#======================================================================================================
#Creating libraries to eliminate redundant compile steps

add_library(shared_libraries ${SHARED_SRCS})
target_link_libraries(shared_libraries shared_libraries ${libs})

add_library(map_libraries ${MAP_SRCS})
add_dependencies(map_libraries shared_libraries )
target_link_libraries(map_libraries shared_libraries ${libs})

add_library(fspf_libraries ${FSPF_SRCS} )
add_dependencies(fspf_libraries shared_libraries )
target_link_libraries(fspf_libraries shared_libraries ${libs})

add_library(cgr_libraries ${CGR_SRCS})
add_dependencies(cgr_libraries shared_libraries map_libraries)
target_link_libraries(cgr_libraries shared_libraries map_libraries ${libs})

#======================================================================================================
#The Executable Targets
#

IF(ROS_ROOT)
  set (target cgr_localization)
  rosbuild_add_executable(${target} src/cgr/localization_main.cpp )
  add_dependencies(${target} cgr_libraries fspf_libraries shared_libraries map_libraries rosbuild_precompile)
  target_link_libraries(${target} shared_libraries map_libraries cgr_libraries fspf_libraries ${libs} roslib)
  
  set (target kinect_main)
  rosbuild_add_executable(${target} src/kinect/kinect_main.cpp )
  add_dependencies(${target} shared_libraries lib_freenect fspf_libraries rosbuild_precompile)
  target_link_libraries(${target} shared_libraries lib_freenect fspf_libraries ${libs} roslib)
  
  set (target localization_gui)
  rosbuild_add_executable(${target} src/gui/vector_display_main.cpp src/gui/vector_display.cpp ${GUI_MOC_SRCS})
  add_dependencies(${target} shared_libraries rosbuild_precompile map_libraries)
  target_link_libraries(${target} shared_libraries map_libraries ${QT_LIBRARIES} ${libs} roslib)
ENDIF(ROS_ROOT)

set (target pre_render)
add_executable(${target} src/cgr/pre_render.cpp )
add_dependencies(${target} shared_libraries map_libraries)
target_link_libraries(${target} shared_libraries map_libraries ${libs})


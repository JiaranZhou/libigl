# - Try to find the TETGEN library
# Once done this will define
#
#  TETGEN_FOUND - system has TETGEN
#  TETGEN_INCLUDE_DIR - the TETGEN include directory
#  TETGEN_SOURCES - the TETGEN source files

FIND_PATH(TETGEN_INCLUDE_DIR tetgen.h
   ${PROJECT_SOURCE_DIR}/../libigl/external/tetgen/
   ${PROJECT_SOURCE_DIR}/../../external/tetgen/
   /usr/include
   /usr/local/include
   NO_DEFAULT_PATH
)

set(TETGEN_SOURCES ${TETGEN_INCLUDE_DIR}/tetgen.cxx ${TETGEN_INCLUDE_DIR}/predicates.cxx)

if(TETGEN_INCLUDE_DIR)
   message(STATUS "Found TETGEN: ${TETGEN_INCLUDE_DIR}")
else(TETGEN_INCLUDE_DIR)
   message(FATAL_ERROR "could NOT find TETGEN")
endif(TETGEN_INCLUDE_DIR)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -DTETLIBRARY")

MARK_AS_ADVANCED(TETGEN_INCLUDE_DIR TETGEN_LIBRARIES TETGEN_SOURCES)

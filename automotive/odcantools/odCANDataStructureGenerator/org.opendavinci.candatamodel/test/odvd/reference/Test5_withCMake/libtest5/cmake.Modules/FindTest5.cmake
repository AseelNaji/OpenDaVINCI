# Test5 - Data structure library generated by CANDataStructureGenerator.
###########################################################################
# Try to find Test5 library.
# The user can specify an additional search path using the CMake variable
# TEST5_DIR
# First, search at the specific user path setting.
IF(NOT ("${TEST5_DIR}" STREQUAL ""))
    FIND_PATH(TEST5_INCLUDE_DIR test5/GeneratedHeaders_Test5.h
                 NAMES test5
                 PATHS ${TEST5_DIR}/include
                 NO_DEFAULT_PATH)
    FIND_LIBRARY(TEST5_LIBRARY
                 NAMES test5 test5-static
                 PATHS ${TEST5_DIR}/lib
                 NO_DEFAULT_PATH)
ENDIF()
IF(   ("${TEST5_INCLUDE_DIR}" STREQUAL "TEST5_INCLUDE_DIR-NOTFOUND")
   OR ("${TEST5_DIR}" STREQUAL "") )
    MESSAGE(STATUS "Trying to find Test5 in default paths.")
    # If not found, use the system's search paths.
    FIND_PATH(TEST5_INCLUDE_DIR test5/GeneratedHeaders_Test5.h
                 NAMES test5
                 PATHS /usr/include
                       /usr/local/include)
    FIND_LIBRARY(TEST5_LIBRARY
                 NAMES test5 test5-static
                 PATHS /usr/lib
                       /usr/lib64
                       /usr/local/lib
                       /usr/local/lib64)
ENDIF()
IF("${TEST5_INCLUDE_DIR}" STREQUAL "")
    MESSAGE(FATAL_ERROR "Could not find Test5 library.")
ENDIF()
###########################################################################
# Set linking libraries.
SET(TEST5_LIBRARIES ${TEST5_LIBRARY})
SET(TEST5_INCLUDE_DIRS ${TEST5_INCLUDE_DIR})
###########################################################################
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(LibTest5 DEFAULT_MSG
                                  TEST5_LIBRARY TEST5_INCLUDE_DIR)
MARK_AS_ADVANCED(TEST5_INCLUDE_DIR TEST5_LIBRARY)
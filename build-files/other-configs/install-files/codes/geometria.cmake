##---------------------------------------------------------------------------##
## File  : orthanc/robus.cmake
## Author: Seth R Johnson
## Date  : Tue Mar 15 15:26:01 2016
## Copyright (c) 2016 Oak Ridge National Laboratory, UT-Battelle, LLC.
##
## Compile only with geometria
##---------------------------------------------------------------------------##

SET(TPL_ENABLE_HDF5 OFF CACHE BOOL "")
SET(TPL_ENABLE_SILO OFF CACHE BOOL "")
SET(TPL_ENABLE_MPI  OFF CACHE BOOL "")
SET(SCALE_ENABLE_ALL_OPTIONAL_PACKAGES    OFF  CACHE BOOL "")
SET(Exnihilo_DISABLE_SCALE ON CACHE BOOL "")

FOREACH(pkg Physica Denovo Shift Insilico Omnibus Hyas)
  SET(SCALE_ENABLE_${pkg}  OFF  CACHE BOOL   "")
ENDFOREACH()
FOREACH(pkg Nemesis Transcore Robus)
  SET(SCALE_ENABLE_${pkg}  ""  CACHE BOOL   "")
ENDFOREACH()
SET(SCALE_ENABLE_Geometria ON  CACHE BOOL   "")

INCLUDE(${CMAKE_CURRENT_LIST_DIR}/base.cmake)

# Debug build
SET(CMAKE_BUILD_TYPE              "Debug" CACHE STRING "")
SET(SCALE_ENABLE_DEBUG            ON      CACHE BOOL   "")
SET(NEMESIS_DBC                   7       CACHE STRING "")

##---------------------------------------------------------------------------##
## end of orthanc/robus.cmake
##---------------------------------------------------------------------------##

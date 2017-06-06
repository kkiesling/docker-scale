##---------------------------------------------------------------------------##
## File  : Exnihilo/install/codes/Exnihilo/ramirezmac/base.cmake
## Author: Seth R Johnson
## Date  : Sat Apr 18 08:30:03 2015
## Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

SET(SCALE_ENABLE_GeometriaDagMC ON CACHE BOOL "")
SET(TPL_ENABLE_DAGMC ON CACHE BOOL "")
SET(TPL_ENABLE_MOAB ON CACHE BOOL "")
SET(TPL_ENABLE_LAVA   OFF CACHE BOOL "")

INCLUDE(${CMAKE_CURRENT_LIST_DIR}/../base.cmake)

##---------------------------------------------------------------------------##
## end of Exnihilo/install/codes/Exnihilo/ramirezmac/base.cmake
##---------------------------------------------------------------------------##

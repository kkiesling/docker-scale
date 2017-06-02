##---------------------------------------------------------------------------##
## File  : Exnihilo/install/rc/Linux/base.cmake
## Author: Seth R Johnson
## Date  : Wed Feb 25 11:14:10 2015
## Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

# Default blas/lapack names given an ATLAS installation
SET(LAPACK_LIBRARY_NAMES lapack CACHE STRING "")
SET(BLAS_LIBRARY_NAMES blas CACHE STRING "")

SET(CMAKE_CXX_COMPILER "/usr/bin/g++" CACHE FILEPATH "" )
SET(CMAKE_C_COMPILER "/usr/bin/gcc" CACHE FILEPATH "" )
SET(CMAKE_Fortran_COMPILER "/usr/bin/gfortran" CACHE FILEPATH "")
SET(BLAS_LIBRARY_DIRS "/usr/lib/libblas/" CACHE FILEPATH "")
SET(LAPACK_LIBRARY_DIRS "/usr/lib/lapack/" CACHE FILEPATH "")
##---------------------------------------------------------------------------##
## end of Exnihilo/install/rc/Linux/base.cmake
##---------------------------------------------------------------------------##

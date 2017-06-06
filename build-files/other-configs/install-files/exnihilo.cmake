##---------------------------------------------------------------------------##
## File  : Exnihilo/install/rc/Linux/base.cmake
## Author: Seth R Johnson
## Date  : Wed Feb 25 11:14:10 2015
## Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

# Default blas/lapack names given an ATLAS installation
SET(LAPACK_LIBRARY_NAMES lapack CACHE STRING "")
SET(BLAS_LIBRARY_NAMES blas CACHE STRING "")

SET(MPI_EXEC "/home/install/openmpi/bin/mpiexec" CACHE FILEPATH "")
SET(CMAKE_CXX_COMPILER "/home/install/openmpi/bin/mpicxx" CACHE FILEPATH "" )
SET(CMAKE_C_COMPILER "/home/install/openmpi/bin/mpicc" CACHE FILEPATH "" )
SET(CMAKE_Fortran_COMPILER "/home/install/openmpi/bin/mpif90" CACHE FILEPATH "")

SET(BLAS_LIBRARY_DIRS "/usr/lib/libblas/" CACHE FILEPATH "")
SET(LAPACK_LIBRARY_DIRS "/usr/lib/lapack/" CACHE FILEPATH "")

SET(SILO_LIBRARY_DIRS  "/home/install/silo/lib"     CACHE PATH "")
SET(SILO_INCLUDE_DIRS  "/home/install/silo/include" CACHE PATH "")

SET(DAGMC_LIBRARY_DIRS "/home/install/moab/lib"     CACHE PATH "")
SET(DAGMC_INCLUDE_DIRS "/home/install/moab/include" CACHE PATH "")
SET(MOAB_LIBRARY_DIRS  "/home/install/moab/lib"     CACHE PATH "")
SET(MOAB_INCLUDE_DIRS  "/home/install/moab/include" CACHE PATH "")

SET(TPL_ENABLE_LAVA   OFF CACHE BOOL "")

##---------------------------------------------------------------------------##
## end of Exnihilo/install/rc/Linux/base.cmake
##---------------------------------------------------------------------------##

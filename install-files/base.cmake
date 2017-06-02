##---------------------------------------------------------------------------##
## File  : Exnihilo/install/rc/Linux/base.cmake
## Author: Seth R Johnson
## Date  : Wed Feb 25 11:14:10 2015
## Copyright (c) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
##---------------------------------------------------------------------------##

# Default blas/lapack names given an ATLAS installation
SET(LAPACK_LIBRARY_NAMES lapack CACHE STRING "")
SET(BLAS_LIBRARY_NAMES atlas CACHE STRING "")

# OpenMPI defaults to binding to lower cores/sockets, which can cause terrible
# performance issues if running multiple simultaneous tasks (e.g. ctest)
#SET(MPI_EXEC_POST_NUMPROCS_FLAGS "--bind-to;none" CACHE STRING "")

SET(SILO_LIBRARY_DIRS  "/home/kkiesling/install/silo/lib"     CACHE PATH "")
SET(SILO_INCLUDE_DIRS  "/home/kkiesling/install/silo/include" CACHE PATH "")

SET(DAGMC_LIBRARY_DIRS "/home/kkiesling/install/moab/lib"     CACHE PATH "")
SET(DAGMC_INCLUDE_DIRS "/home/kkiesling/install/moab/include" CACHE PATH "")
SET(MOAB_LIBRARY_DIRS  "/home/kkiesling/install/moab/lib"     CACHE PATH "")
SET(MOAB_INCLUDE_DIRS  "/home/kkiesling/install/moab/include" CACHE PATH "")

#SET(TPL_ENABLE_LAVA OFF)
SET(TPL_ENABLE_LAVA   OFF CACHE BOOL "")
SET(MPI_EXEC "/home/kkiesling/install/openmpi/bin/mpiexec" CACHE FILEPATH "")
SET(CMAKE_CXX_COMPILER "/home/kkiesling/install/openmpi/bin/mpicxx" CACHE FILEPATH "" )
SET(CMAKE_C_COMPILER "/home/kkiesling/install/openmpi/bin/mpicc" CACHE FILEPATH "" ) 
SET(CMAKE_Fortran_COMPILER "/home/kkiesling/install/openmpi/bin/mpif90" CACHE FILEPATH "")
SET(BLAS_LIBRARY_DIRS "/usr/lib64/atlas/" CACHE PATH "")
SET(LAPACK_LIBRARY_DIRS "/usr/lib64/atlas/" CACHE PATH "")
##---------------------------------------------------------------------------##
## end of Exnihilo/install/rc/Linux/base.cmake
##---------------------------------------------------------------------------##

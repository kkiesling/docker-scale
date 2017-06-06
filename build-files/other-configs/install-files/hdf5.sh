#! /bin/sh

## THIRD-PARTY LIBRARIES
export source_base=/opt
export prefix_base=/install
export build_base=/build

gcc_base=/usr
export CC=/install/openmpi/bin/mpicc
export CXX=/install/openmpi/bin/mpicxx
export F90=/install/openmpi/bin/mpif90
export FC=$F90
export F77=$F90
export F95=$F90

# Used by Exnihilo cmake script to determine flags. 4.8.0 -> 480
export gcc_version=540

export SWIGFLAGS="-modern -noproxydel"
export CFLAGS="-fPIC -std=c++11"
export CXXFLAGS=${CFLAGS}
export FCFLAGS="-fPIC"
export F90FLAGS=${FCFLAGS}

# OpenMPI
export PATH=$prefix_base/openmpi/bin:$PATH
export MPI_BASE_DIR=$prefix_base/openmpi
export LD_LIBRARY_PATH=$prefix_base/openmpi/lib:$LD_LIBRARY_PATH

# Qt
export PATH=$prefix_base/qt/bin/:$PATH
export LD_LIBRARY_PATH=$prefix_base/qt/lib:$LD_LIBRARY_PATH

export CMAKE_PREFIX_PATH=$prefix_base/openmpi:$prefix_base/qt

export num_procs=$(grep -c processor /proc/cpuinfo)


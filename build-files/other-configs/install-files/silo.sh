#! /bin/sh

## THIRD-PARTY LIBRARIES
export source_base=/home/opt
export prefix_base=/home/install
export build_base=/home/bld

gcc_base=/usr
export CC=/home/install/openmpi/bin/mpicc
export CXX=/home/install/openmpi/bin/mpicxx
export F90=/home/install/openmpi/bin/mpif90
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

# HDF5
export PATH=$prefix_base/hdf5/bin:$PATH
export LD_LIBRARY_PATH=$prefix_base/hdf5/lib:$LD_LIBRARY_PATH
export HDF5_DIR=$prefix_base/hdf5

export CMAKE_PREFIX_PATH=$prefix_base/openmpi:$prefix_base/qt:$prefix_base/hdf5

export num_procs=$(grep -c processor /proc/cpuinfo)


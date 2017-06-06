#! /bin/sh

## THIRD-PARTY LIBRARIES
export source_base=/scratch/local/kkiesling/opt
export prefix_base=${HOME}/install
export build_base=/scratch/local/kkiesling/bld

gcc_base=/usr
export CC=${HOME}/install/openmpi/bin/mpicc
export CXX=${HOME}/install/openmpi/bin/mpicxx
export F90=${HOME}/install/openmpi/bin/mpif90
export FC=$F90
export F77=$F90
export F95=$F90

# Used by Exnihilo cmake script to determine flags. 4.8.0 -> 480
export gcc_version=494

export SWIGFLAGS="-modern -noproxydel"
export CFLAGS="-fPIC -std=c++11"
export CXXFLAGS=${CFLAGS}
export FCFLAGS="-fPIC"
export F90FLAGS=${FCFLAGS}

# gcc
export PATH=$prefix_base/gcc/bin:$PATH
export LD_LIBRARY_PATH=$prefix_base/gcc/lib:$prefix_path/gcc/lib64:$LD_LIBRARY_PATH

# qt
#export PATH=$HOME/install/qt/bin/:$PATH
#export LD_LIBRARY_PATH=$HOME/install/qt/lib:$LD_LIBRARY_PATH
### NOTE ON Qt INSTALL: add -embedded flag on install for linux (Qt version 4.8.6)

# OpenMPI
export PATH=$prefix_base/openmpi/bin:$PATH
export MPI_BASE_DIR=$prefix_base/openmpi
export LD_LIBRARY_PATH=$prefix_base/openmpi/lib:$LD_LIBRARY_PATH

# HDF5
#export PATH=$HOME/install/hdf5/bin:$PATH
#export HDF5_DIR=$HOME/install/hdf5

# Silo
#export PATH=$HOME/install/silo/bin:$PATH

# MOAB
#export PATH=$HOME/install/moab/bin:$PATH

# lava
#export PATH=$HOME/install/lava/bin:$PATH

# Paths to TPLs to be automatically searched by CMake
#export CMAKE_PREFIX_PATH=/usr/mpi/gcc/openmpi-2.0.1/:$prefix_base/qt/:$prefix_base/hdf5/:$prefix_base/silo:$prefix_base/moab:$prefix_base/lava
export CMAKE_PREFIX_PATH=$prefix_base/gcc:$prefix_base/openmpi:$prefix_base/qt #:$prefix_base/hdf5:$prefix_base/silo #:$prefix_base/moab

# Shared libraries if needed
#ld_paths=
#export LD_RUN_PATH=${ld_paths}:${LD_RUN_PATH}
#export LD_LIBRARY_PATH=${ld_paths}:${LD_LIBRARY_PATH}
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib64/atlas/

# Additional paths if needed
#export PATH=${prefix_base}/cmake/bin:${PATH}

# Location of MCNP source code, used to compile Lava
#export mcnp_src=${source_base}/mcnp
# Location of MCNP executable
#export mcnp_exe=${HOME}/LANL/bin/mcnp5
# MCNP data path
#export DATAPATH=${HOME}/LANL/MCNP_DATA

# Scale data location
export DATA=$HOME/data/Scale/

# ADVANTG data location
export anisn_path=$HOME/data/advantg/

export num_procs=$(grep -c processor /proc/cpuinfo)


#! /bin/sh

## THIRD-PARTY LIBRARIES
export source_base=/opt
export prefix_base=/install
export build_base=/build

gcc_base=/usr
export CC=/usr/bin/gcc
export CXX=/usr/bin/g++
export F90=/usr/bin/gfortran
export FC=$F90
export F77=$F90
export F95=$F90

# Used by Exnihilo cmake script to determine flags. 4.8.0 -> 480
export gcc_version=540

export SWIGFLAGS="-modern -noproxydel"
export CFLAGS="-fPIC"
export CXXFLAGS=${CFLAGS}
export FCFLAGS="-fPIC"
export F90FLAGS=${FCFLAGS}

export num_procs=$(grep -c processor /proc/cpuinfo)


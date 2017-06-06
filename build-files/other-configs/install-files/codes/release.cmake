###############################################################################
# File  : Exnihilo/install/codes/Exnihilo/ramirezmac/debug.cmake
# Author: Marissa I. Ramirez Zweiger
# Date  : Thu Sep 10 11:00:26 2015
# Copyright (C) 2015 Oak Ridge National Laboratory, UT-Battelle, LLC.
###############################################################################

# QMAKE Executable
#SET(QT_QMAKE_EXECUTABLE "/opt/local/libexec/qt4/bin/qmake" CACHE STRING "")

# Set data paths
SET(SCALE_DATA_DIR     "/home/kkiesling/data/Scale/"     CACHE PATH "")
SET(SCALE_HPC_DATA_DIR "/home/kkiesling/data/Scale/" CACHE PATH "")

# Debug build
SET(CMAKE_BUILD_TYPE              "RELEASE" CACHE STRING "")
SET(SCALE_ENABLE_DEBUG            OFF       CACHE BOOL   "")
SET(NEMESIS_DBC                   0         CACHE STRING "")
SET(NEMESIS_TIMING                2         CACHE STRING "")

# Enable tests
SET(SCALE_ENABLE_TESTS ON CACHE BOOL "")

# Disable TPLs
SET(TPL_ENABLE_LAVA                     OFF CACHE BOOL "")

# Disable most packages
SET(SCALE_ENABLE_ALL_OPTIONAL_PACKAGES OFF CACHE BOOL "")
SET(SCALE_ENABLE_Insilico              OFF CACHE BOOL "")
SET(SCALE_ENABLE_Shift                 ON CACHE BOOL "")
SET(SCALE_ENABLE_CELibrary             ON CACHE BOOL "")

# Explicitly enable some
SET(SCALE_ENABLE_GeometriaDagMC         ON CACHE BOOL "")
SET(SCALE_ENABLE_OmnibusDenovo_managers ON CACHE BOOL "")
SET(SCALE_ENABLE_Denovo                 ON CACHE BOOL "")
SET(PyKBA_ENABLE_ALL_EQUATIONS          OFF CACHE BOOL "")
#SET(SCALE_ENABLE_ACCEPTANCE             OFF  CACHE BOOL "")
#SET(SCALE_ENABLE_OmnibusAcceptance      OFF  CACHE BOOL "")

# Enable tests
SET(SCALE_ENABLE_TESTS ON CACHE BOOL "")

INCLUDE(${CMAKE_CURRENT_LIST_DIR}/../base.cmake)

###############################################################################
#                          exnihilo/denovo.cmake
###############################################################################

#!/bin/bash
export PYCVODES_LAPACK=lapack,blas
export PYCVODES_SUNDIALS_LIBS=sundials_cvodes,sundials_nvecserial,sundials_sunlinsollapackdense,sundials_sunlinsollapackband,sundials_sunlinsolklu
export CPATH=${CONDA_PREFIX}/include/suitesparse  # sundials' sunlinsol_klu.h has: #include <klu.h>
python -m pip install --no-deps --ignore-installed . -vv

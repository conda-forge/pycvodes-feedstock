#!/bin/bash
export PYCVODES_LAPACK=lapack,blas
export PYCVODES_SUNDIALS_LIBS=sundials_cvodes,sundials_nvecserial,sundials_sunlinsollapackdense,sundials_sunlinsollapackband,sundials_sunlinsolklu
find $PREFIX -name klu.h
export CPATH=${PREFIX}/include/suitesparse  # sundials' sunlinsol_klu.h has: #include <klu.h>
echo $CPATH
exit 1
python -m pip install --no-deps --ignore-installed . -vv

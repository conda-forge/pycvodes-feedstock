#!/bin/bash
export PYCVODES_LAPACK=lapack,blas
export PYCVODES_SUNDIALS_LIBS=sundials_cvodes,sundials_nvecserial,sundials_sunlinsollapackdense,sundials_sunlinsollapackband,sundials_sunlinsolklu
python -m pip install --no-deps --ignore-installed . -vv

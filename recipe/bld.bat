set "PYCVODES_NO_KLU=1"
set "PYCVODES_NO_LAPACK=1"
set "PYCVODES_SUNDIALS_LIBS=sundials_cvodes,sundials_nvecserial,sundials_core"
python -m pip install --no-deps --ignore-installed .

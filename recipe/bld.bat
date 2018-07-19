set PYCVODES_LAPACK=0
set PYCVODES_SUNDIALS_LIBS="sundials_nvecserial,sundials_cvodes"
python -m pip install --no-deps --ignore-installed .

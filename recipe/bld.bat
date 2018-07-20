set PYCVODES_LAPACK=0
set PYCVODES_SUNDIALS_LIBS="sundials_cvodes,sundials_nvecserial"
python -m pip install --no-deps --ignore-installed .

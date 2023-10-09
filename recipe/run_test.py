#!/usr/bin/env python
# -*- coding: utf-8 -*-

import os
import pytest
import sys
import pathlib
from pycvodes import get_include


def check_for_header_file():
    header_fname = 'cvodes_cxx.hpp'
    assert header_fname in os.listdir(get_include())
    print("OK: Found header file.")
    path = os.path.join(get_include(), header_fname)
    assert open(path, 'rt').readline().startswith('#pragma once')
    print("OK: Header is readable and starts with '#pragma once'.")

if __name__ == '__main__':
    check_for_header_file()
    # https://docs.pytest.org/en/7.3.x/how-to/usage.html#calling-pytest-from-python-code
    pytest_args = [
        #'--pyargs', 'pycvodes',
        os.path.expandvars(str(pathlib.Path(get_include()).parent / "tests")),  # I don't know why --pyargs doesn't work...
        '-v', '-s'
    ]
    print("INFO: about to run pytest.main(...) with args: %s" % str(pytest_args))
    pytest_exit_code = pytest.main()
    print("INFO: pytest.main(...) returned exit code: %d" % pytest_exit_code)
    sys.exit(pytest_exit_code)

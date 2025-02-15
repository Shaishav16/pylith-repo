```m4
dnl CIT_PYTHON_CHECKS.m4 - Macros to check for Python and its libraries

AC_DEFUN([CIT_PYTHON_CONFIG], [
  AC_PATH_PROG(PYTHON, python)
  if test -z "$PYTHON"; then
    AC_MSG_ERROR([Python interpreter not found])
  fi
])

AC_DEFUN([CIT_CHECK_PYTHON_HEADER], [
  AC_CHECK_HEADERS([Python.h], [], [AC_MSG_ERROR([Python header files not found])])
])

AC_DEFUN([CIT_CHECK_PYTHON_SHARED], [
  AC_SEARCH_LIBS([Py_Initialize], [python], [], [AC_MSG_ERROR([Python shared library not found])])
])

AC_DEFUN([CIT_PYTHON_MODULE], [
  AC_MSG_CHECKING([for Python module $1])
  $PYTHON -c "import $1" >/dev/null 2>&1
  if test $? -eq 0; then
    AC_MSG_RESULT([found])
  else
    AC_MSG_ERROR([Python module $1 not found])
  fi
])
```

```m4
# configure.ac for Nemesis

AC_PREREQ([2.69])
AC_INIT([Nemesis], [0.1], [support@example.com])
AM_INIT_AUTOMAKE([foreign -Wall -Werror])
AC_CONFIG_SRCDIR([nemesis.c])
AC_CONFIG_HEADERS([config.h])

# Include custom macros
m4_include([m4/cit_python.m4])

# Checks for programs.
AC_PROG_CC
AC_PROG_RANLIB
AC_PROG_INSTALL

# Checks for libraries.
CIT_PYTHON_CONFIG
CIT_CHECK_PYTHON_HEADER
CIT_CHECK_PYTHON_SHARED
CIT_PYTHON_MODULE([pythia], [0.9.0])

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_MEMCMP
AC_FUNC_VPRINTF
AC_CHECK_FUNCS([memset strchr strdup strrchr])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
```
#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.63])
AC_INIT([openvanilla-modules], [0.9.0a1], [http://github.com/lukhnos/openvanilla-oranje/issues])
AC_CONFIG_SRCDIR([../../Frameworks/OpenVanilla/Headers/OVFileHelper.h])
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CXX
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([fcntl.h stdlib.h string.h sys/param.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_HEADER_STDBOOL
AC_C_INLINE
AC_TYPE_SIZE_T

# Checks for library functions.
AC_FUNC_MALLOC
AC_FUNC_MMAP
AC_FUNC_REALLOC
AC_CHECK_FUNCS([bzero mkdir munmap rmdir select strcasecmp strchr strcspn strspn strstr strtol])

AC_OUTPUT

AC_INIT([lua-protobuf], [lkwd-1], [tim.marston@lockwood-publishing.com])
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([foreign dist-xz subdir-objects])

AC_ARG_WITH([tarantool],
	[AS_HELP_STRING([--with-tarantool=DIR],
		[specify location of tarantool sources])],
	[LUAJIT_DIR=$withval/third_party/luajit])
AC_ARG_WITH([luajit],
	[AS_HELP_STRING([--with-luajit=DIR],
		[specify location of luajit sources])],
	[AC_SUBST([LUAJIT_DIR], [$with_arg])])

# check luajit srouces
AC_MSG_CHECKING([for luajit sources])
AS_IF([test "x$LUAJIT_DIR" == x], [
	AC_MSG_RESULT([not found])
	AC_MSG_ERROR([please provide --with-luajit (or --with-tarantool)])
])
AS_IF([test -d "$LUAJIT_DIR" && test -d "$LUAJIT_DIR/src"], [
	AC_MSG_RESULT([$LUAJIT_DIR])
	CPPFLAGS="$CPPFLAGS -I$LUAJIT_DIR/src"
	AC_DEFINE([HAVE_LUAJIT_SRC], 1, [Have luajit sources to build against?])
], [
	AC_MSG_RESULT([not found])
	AS_IF([test "x$with_tarantool" == x], [
		AC_MSG_FAILURE([luajit source directory not found!])
	], [
		AS_IF([test -d "$with_tarantool"], [
			AC_MSG_FAILURE([luajit source not found in tarantool source!])
		], [
			AC_MSG_FAILURE([tarantool source directory not found!])
		])
	])
])

# checks for programs
AC_PROG_CC
AM_PROG_LIBTOOL
AC_PROG_LN_S

# checks for libraries

# checks for header files
AC_HEADER_STDC
AC_HEADER_ASSERT
AC_CHECK_HEADERS([stdio.h errno.h stddef.h limits.h setjmp.h])
AC_CHECK_HEADERS([lj_ctype.h lj_obj.h])

# checks for types

# checks for structures

# checks for compiler characteristics

# checks for library functions

# checks for system services

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([Makefile
	rockspecs/$PACKAGE-$VERSION.rockspec:rockspecs/$PACKAGE-lkwd.rockspec.in])
AC_OUTPUT
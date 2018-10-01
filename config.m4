dnl config.m4 for extension djbx33a

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(djbx33a, for djbx33a support,
dnl Make sure that the comment is aligned:
dnl [  --with-djbx33a             Include djbx33a support])

dnl Otherwise use enable:

PHP_ARG_ENABLE(djbx33a, whether to enable djbx33a support,
dnl Make sure that the comment is aligned:
[  --enable-djbx33a          Enable djbx33a support], no)

if test "$PHP_DJBX33A" != "no"; then
  dnl Write more examples of tests here...

  dnl # get library FOO build options from pkg-config output
  dnl AC_PATH_PROG(PKG_CONFIG, pkg-config, no)
  dnl AC_MSG_CHECKING(for libfoo)
  dnl if test -x "$PKG_CONFIG" && $PKG_CONFIG --exists foo; then
  dnl   if $PKG_CONFIG foo --atleast-version 1.2.3; then
  dnl     LIBFOO_CFLAGS=\`$PKG_CONFIG foo --cflags\`
  dnl     LIBFOO_LIBDIR=\`$PKG_CONFIG foo --libs\`
  dnl     LIBFOO_VERSON=\`$PKG_CONFIG foo --modversion\`
  dnl     AC_MSG_RESULT(from pkgconfig: version $LIBFOO_VERSON)
  dnl   else
  dnl     AC_MSG_ERROR(system libfoo is too old: version 1.2.3 required)
  dnl   fi
  dnl else
  dnl   AC_MSG_ERROR(pkg-config not found)
  dnl fi
  dnl PHP_EVAL_LIBLINE($LIBFOO_LIBDIR, DJBX33A_SHARED_LIBADD)
  dnl PHP_EVAL_INCLINE($LIBFOO_CFLAGS)

  dnl # --with-djbx33a -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/djbx33a.h"  # you most likely want to change this
  dnl if test -r $PHP_DJBX33A/$SEARCH_FOR; then # path given as parameter
  dnl   DJBX33A_DIR=$PHP_DJBX33A
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for djbx33a files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       DJBX33A_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$DJBX33A_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the djbx33a distribution])
  dnl fi

  dnl # --with-djbx33a -> add include path
  dnl PHP_ADD_INCLUDE($DJBX33A_DIR/include)

  dnl # --with-djbx33a -> check for lib and symbol presence
  dnl LIBNAME=DJBX33A # you may want to change this
  dnl LIBSYMBOL=DJBX33A # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $DJBX33A_DIR/$PHP_LIBDIR, DJBX33A_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_DJBX33ALIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong djbx33a lib version or lib not found])
  dnl ],[
  dnl   -L$DJBX33A_DIR/$PHP_LIBDIR -lm
  dnl ])
  dnl
  dnl PHP_SUBST(DJBX33A_SHARED_LIBADD)

  dnl # In case of no dependencies
  AC_DEFINE(HAVE_DJBX33A, 1, [ Have djbx33a support ])

  PHP_NEW_EXTENSION(djbx33a, djbx33a.c, $ext_shared)
fi

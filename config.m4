dnl config.m4 for extension djbx33a

PHP_ARG_ENABLE(djbx33a, whether to enable djbx33a support,
[  --enable-djbx33a    Enable ast support])

if test "$PHP_DJBX33A" != "no"; then
  PHP_NEW_EXTENSION(djbx33a, djbx33a.c, $ext_shared)
fi

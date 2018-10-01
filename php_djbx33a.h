/* djbx33a extension for PHP */

#ifndef PHP_DJBX33A_H
# define PHP_DJBX33A_H

extern zend_module_entry djbx33a_module_entry;
# define phpext_djbx33a_ptr &djbx33a_module_entry

# define PHP_DJBX33A_VERSION "0.1.0"

# if defined(ZTS) && defined(COMPILE_DL_DJBX33A)
ZEND_TSRMLS_CACHE_EXTERN()
# endif

#endif	/* PHP_DJBX33A_H */

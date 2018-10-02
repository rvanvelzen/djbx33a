/* djbx33a extension for PHP */

#ifdef HAVE_CONFIG_H
#include "config.h"
#endif

#include "php.h"
#include "ext/standard/info.h"
#include "php_djbx33a.h"

/* {{{ void djbx33a(string $input)
 */
PHP_FUNCTION(djbx33a)
{
	zend_string *input;

	ZEND_PARSE_PARAMETERS_START(1, 1)
		Z_PARAM_STR(input)
	ZEND_PARSE_PARAMETERS_END();

	RETURN_LONG(ZSTR_HASH(input));
}
/* }}}*/

/* {{{ PHP_RINIT_FUNCTION
 */
PHP_RINIT_FUNCTION(djbx33a)
{
	return SUCCESS;
}
/* }}} */

/* {{{ PHP_MINFO_FUNCTION
 */
PHP_MINFO_FUNCTION(djbx33a)
{
	php_info_print_table_start();
	php_info_print_table_header(2, "djbx33a support", "enabled");
	php_info_print_table_end();
}
/* }}} */

/* {{{ arginfo
 */
ZEND_BEGIN_ARG_INFO(arginfo_djbx33a, 0)
	ZEND_ARG_INFO(0, input)
ZEND_END_ARG_INFO()
/* }}} */

/* {{{ djbx33a_functions[]
 */
static const zend_function_entry djbx33a_functions[] = {
	PHP_FE(djbx33a, arginfo_djbx33a)
	PHP_FE_END
};
/* }}} */

/* {{{ djbx33a_module_entry
 */
zend_module_entry djbx33a_module_entry = {
	STANDARD_MODULE_HEADER,
	"djbx33a",					/* Extension name */
	djbx33a_functions,			/* zend_function_entry */
	NULL,							/* PHP_MINIT - Module initialization */
	NULL,							/* PHP_MSHUTDOWN - Module shutdown */
	PHP_RINIT(djbx33a),			/* PHP_RINIT - Request initialization */
	NULL,							/* PHP_RSHUTDOWN - Request shutdown */
	PHP_MINFO(djbx33a),			/* PHP_MINFO - Module info */
	PHP_DJBX33A_VERSION,		/* Version */
	STANDARD_MODULE_PROPERTIES
};
/* }}} */

#ifdef COMPILE_DL_DJBX33A
ZEND_GET_MODULE(djbx33a)
#endif
